package com.advoques.jitsi_meet_local

import android.util.Log
import com.advoques.jitsi_meet_local.JitsiMeetLocalPlugin.Companion.JITSI_PLUGIN_TAG
import io.flutter.plugin.common.EventChannel
import java.io.Serializable

/**
 * StreamHandler to listen to conference events and broadcast it back to Flutter
 */
class JitsiMeetLocalEventStreamHandler private constructor(): EventChannel.StreamHandler, Serializable {
    companion object {
        val instance = JitsiMeetLocalEventStreamHandler()
    }

    private var eventSink: EventChannel.EventSink? = null

    override fun onListen(arguments: Any?, eventSink: EventChannel.EventSink?) {
        Log.d(JITSI_PLUGIN_TAG, "JitsiMeetLocalEventStreamHandler.onListen")
        this.eventSink = eventSink
    }

    override fun onCancel(arguments: Any?) {
        Log.d(JITSI_PLUGIN_TAG, "JitsiMeetLocalEventStreamHandler.onCancel")
        eventSink = null
    }

    fun onConferenceWillJoin(data: MutableMap<String, Any>?) {
        Log.d(JITSI_PLUGIN_TAG, "JitsiMeetLocalEventStreamHandler.onConferenceWillJoin")
        data?.put("event", "onConferenceWillJoin")
        eventSink?.success(data)
    }

    fun onConferenceJoined(data: MutableMap<String, Any>?) {
        Log.d(JITSI_PLUGIN_TAG, "JitsiMeetLocalEventStreamHandler.onConferenceJoined")
        data?.put("event", "onConferenceJoined")
        eventSink?.success(data)
    }

    fun onConferenceTerminated(data: MutableMap<String, Any>?) {
        Log.d(JITSI_PLUGIN_TAG, "JitsiMeetLocalEventStreamHandler.onConferenceTerminated")
        data?.put("event", "onConferenceTerminated")
        eventSink?.success(data)
    }

    fun onPictureInPictureWillEnter() {
        Log.d(JITSI_PLUGIN_TAG, "JitsiMeetLocalEventStreamHandler.onPictureInPictureWillEnter")
        var data : HashMap<String, String>
                = HashMap<String, String> ()
        data?.put("event", "onPictureInPictureWillEnter")
        eventSink?.success(data)
    }

    fun onPictureInPictureTerminated() {
        Log.d(JITSI_PLUGIN_TAG, "JitsiMeetLocalEventStreamHandler.onPictureInPictureTerminated")
        var data : HashMap<String, String>
                = HashMap<String, String> ()
        data?.put("event", "onPictureInPictureTerminated")
        eventSink?.success(data)
    }

}