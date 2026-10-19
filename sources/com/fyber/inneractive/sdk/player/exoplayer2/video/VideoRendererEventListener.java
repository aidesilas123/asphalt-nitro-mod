package com.fyber.inneractive.sdk.player.exoplayer2.video;

import android.os.Handler;
import android.view.Surface;
import com.fyber.inneractive.sdk.player.exoplayer2.decoder.DecoderCounters;
import com.fyber.inneractive.sdk.player.exoplayer2.i;

/* JADX INFO: loaded from: classes2.dex */
public interface VideoRendererEventListener {

    public static final class EventDispatcher {
        private final Handler handler;
        private final VideoRendererEventListener listener;

        public class a implements Runnable {
            public final /* synthetic */ DecoderCounters a;

            public a(DecoderCounters decoderCounters) {
                this.a = decoderCounters;
            }

            @Override // java.lang.Runnable
            public void run() {
                EventDispatcher.this.listener.onVideoEnabled(this.a);
            }
        }

        public class b implements Runnable {
            public final /* synthetic */ String a;
            public final /* synthetic */ long b;
            public final /* synthetic */ long c;

            public b(String str, long j, long j2) {
                this.a = str;
                this.b = j;
                this.c = j2;
            }

            @Override // java.lang.Runnable
            public void run() {
                EventDispatcher.this.listener.onVideoDecoderInitialized(this.a, this.b, this.c);
            }
        }

        public class c implements Runnable {
            public final /* synthetic */ i a;

            public c(i iVar) {
                this.a = iVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                EventDispatcher.this.listener.onVideoInputFormatChanged(this.a);
            }
        }

        public class d implements Runnable {
            public final /* synthetic */ int a;
            public final /* synthetic */ long b;

            public d(int i, long j) {
                this.a = i;
                this.b = j;
            }

            @Override // java.lang.Runnable
            public void run() {
                EventDispatcher.this.listener.onDroppedFrames(this.a, this.b);
            }
        }

        public class e implements Runnable {
            public final /* synthetic */ int a;
            public final /* synthetic */ int b;
            public final /* synthetic */ int c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public final /* synthetic */ float f2620d;

            public e(int i, int i2, int i3, float f2) {
                this.a = i;
                this.b = i2;
                this.c = i3;
                this.f2620d = f2;
            }

            @Override // java.lang.Runnable
            public void run() {
                EventDispatcher.this.listener.onVideoSizeChanged(this.a, this.b, this.c, this.f2620d);
            }
        }

        public class f implements Runnable {
            public final /* synthetic */ Surface a;

            public f(Surface surface) {
                this.a = surface;
            }

            @Override // java.lang.Runnable
            public void run() {
                EventDispatcher.this.listener.onRenderedFirstFrame(this.a);
            }
        }

        public class g implements Runnable {
            public final /* synthetic */ DecoderCounters a;

            public g(DecoderCounters decoderCounters) {
                this.a = decoderCounters;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.a.ensureUpdated();
                EventDispatcher.this.listener.onVideoDisabled(this.a);
            }
        }

        public EventDispatcher(Handler handler, VideoRendererEventListener videoRendererEventListener) {
            this.handler = videoRendererEventListener != null ? (Handler) com.fyber.inneractive.sdk.player.exoplayer2.util.a.a(handler) : null;
            this.listener = videoRendererEventListener;
        }

        public void decoderInitialized(String str, long j, long j2) {
            if (this.listener != null) {
                this.handler.post(new b(str, j, j2));
            }
        }

        public void disabled(DecoderCounters decoderCounters) {
            if (this.listener != null) {
                this.handler.post(new g(decoderCounters));
            }
        }

        public void droppedFrames(int i, long j) {
            if (this.listener != null) {
                this.handler.post(new d(i, j));
            }
        }

        public void enabled(DecoderCounters decoderCounters) {
            if (this.listener != null) {
                this.handler.post(new a(decoderCounters));
            }
        }

        public void inputFormatChanged(i iVar) {
            if (this.listener != null) {
                this.handler.post(new c(iVar));
            }
        }

        public void renderedFirstFrame(Surface surface) {
            if (this.listener != null) {
                this.handler.post(new f(surface));
            }
        }

        public void videoSizeChanged(int i, int i2, int i3, float f2) {
            if (this.listener != null) {
                this.handler.post(new e(i, i2, i3, f2));
            }
        }
    }

    void onDroppedFrames(int i, long j);

    void onRenderedFirstFrame(Surface surface);

    void onVideoDecoderInitialized(String str, long j, long j2);

    void onVideoDisabled(DecoderCounters decoderCounters);

    void onVideoEnabled(DecoderCounters decoderCounters);

    void onVideoInputFormatChanged(i iVar);

    void onVideoSizeChanged(int i, int i2, int i3, float f2);
}
