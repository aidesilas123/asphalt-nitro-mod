package com.json.mediationsdk.logger;

import com.json.environment.thread.IronSourceThreadManager;
import com.json.mediationsdk.logger.IronSourceLogger;

/* JADX INFO: loaded from: classes4.dex */
public class b extends IronSourceLogger {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private LogListener f6342e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f6343f;

    class a implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ IronSourceLogger.IronSourceTag b;
        final /* synthetic */ int c;

        a(String str, IronSourceLogger.IronSourceTag ironSourceTag, int i) {
            this.a = str;
            this.b = ironSourceTag;
            this.c = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (b.this.f6342e == null || this.a == null) {
                return;
            }
            b.this.f6342e.onLog(this.b, this.a, this.c);
        }
    }

    private b() {
        super("publisher");
    }

    public b(LogListener logListener, int i) {
        super("publisher", i);
        this.f6342e = logListener;
        this.f6343f = false;
    }

    public void a(LogListener logListener) {
        this.f6342e = logListener;
    }

    public void a(boolean z) {
        this.f6343f = z;
    }

    @Override // com.json.mediationsdk.logger.IronSourceLogger
    public void log(IronSourceLogger.IronSourceTag ironSourceTag, String str, int i) {
        a aVar = new a(str, ironSourceTag, i);
        if (this.f6343f) {
            IronSourceThreadManager.INSTANCE.postOnUiThreadTask(aVar);
        } else {
            IronSourceThreadManager.INSTANCE.postPublisherCallback(aVar);
        }
    }

    @Override // com.json.mediationsdk.logger.IronSourceLogger
    public void logException(IronSourceLogger.IronSourceTag ironSourceTag, String str, Throwable th) {
        if (th != null) {
            log(ironSourceTag, th.getMessage(), 3);
        }
    }
}
