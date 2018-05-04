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

static void getSinkInfoCallBack(pa_context *c, const pa_sink_info * i, int is_last, void *userdata){
    if(is_last){
        pa_operation_unref(pa_context_get_server_info(c, getServerInfoCallback, userdata));
        return;
    }
    printf("Sink: %s - $s \n", i -> description, i -> name);
}

static void getSourceInfoCallBack(pa_context *c, const pa_source_info * i, int is_last, void *userdata){

}