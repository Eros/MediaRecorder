#ifndef MEDIA_H
#define MEDIA_H
extern "C"{
#include <avcodec.h>
#include <avformat.h>
#include <swscale.h>
};

#incloude <pthread.h>
#incude <string>
#include <map>
#include <list>
#include <pulse/pulseaudio.h>
#include <pulse/simple.h>

class media {
    Media(const char * outfile, int width, int height);
    ~Media();
    void AppendFrame(float time, int width, int height, char * data);
    bool isReady();
    void EncodingThread();
    void RecordingThread();
    std::string defaultsink = "";
    std::map<std::string, std::string> monitorSources;
private:
    AVFrame* tmpPicture;
    AVFrame* picture;
    SwsContext* imgConvertCtx;
    AVCodec* codec;
    AVCodecContext* context;
    AVFormatContext* outContext;
    pthread_t encode_thread;
    pthread_t record_sound_thread;
    pthread_mutex_t encode_mutex;
    pthread_mutex_t sound_buffer_lock;
    std::list<short*> sound_buffers;
    pthread_cond_t encode_cond;
    bool ready;
    bool run;
    int height;
    int width;
    double time;
    bool firstFrame;
    double startTime;
    pa_simple* s;
    AVCodec* acodec;
    AVCodecContext* actx;
    long audio_samples_written;
    bool audioFailed;
};

#endif