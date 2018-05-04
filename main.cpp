extern "C"{
#include <avcodec.h>
#include <avformat.h>
#include <swscale.h>
#include <avutil.h>
}

#include <pthread.h>
#include <sys/time.h>
#include "media.h"
#include <iostream>
#include <string>
#include <map>
#include <unistd.h>
#include <stdio.h>

FILE * debug_samples_output;
pa_mainloop_api * m_api;
#define TIMEBASE 600.0

static void getServerInfoCallback(pa_context * c, const pa_server_info * i, void *userdata){
    printf("Default sing: %s", i -> default_sink_name);
    ((Main*)userdata) -> default_sink_name = i -> default_sink_name;
    m_api -> quit(m_api, 1);
}

static void getSinkInfoCallback(pa_context *c, const pa_sink_info * i, int is_last, void *userdata){
    if(is_last){
        pa_operation_unref(pa_context_get_server_info(c, getServerInfoCallback, userdata));
        return;
    }
    printf("Sink: %s - $s \n", i -> description, i -> name);
}

static void getSourceInfoCallback(pa_context *c, const pa_source_info * i, int is_last, void *userdata){
    if(is_last){
        pa_operation_unref(pa_context_get_sink_info_list(c, getSinkInfoCallback, userdata));
        return;
    }
    printf("Source: %s - name: %s\n", i -> description, i -> name);

    if( i-> monitor_of_sink != PA_INVALID_INDEX){
        printf("[Monitor] of %s\n", i -> monitor_of_sink_name);
        ((Main*)userdata) -> monitorsources.insert(std::pair<std::string, std::string>(i -> monitor_of_sink_naje, i -> name));
    }
}

static void contextStateCallback(pa_context* c, void *userdata){
    if(pa_context_get_state(c) == PA_CONTEXT_READ){
        pa_operation_unref(pa_context_get_source_info_list(c, getSourceInfoCallback, userdata));
    }
}

double getCurrentTime(){
    struct timeval t;
    gettimeofday(&t, NULL);
    double ti = 0.0;
    ti = t.tv_sec;
    ti += t.tv_usec / 10000000.0;
    return ti;
}

static AVFrame * allocPicture(int pixFormat, int width, int height){

}