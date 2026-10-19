package com.mbridge.msdk.foundation.same.net.a;

import java.io.ByteArrayOutputStream;
import java.nio.channels.WritableByteChannel;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import org.chromium.net.UrlRequest;

/* JADX INFO: compiled from: DefaultCronetCallback.java */
/* JADX INFO: loaded from: classes4.dex */
public final class c extends UrlRequest.Callback {
    ByteArrayOutputStream a = null;
    WritableByteChannel b = null;
    com.mbridge.msdk.foundation.same.net.f.b c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    AtomicBoolean f7131d = new AtomicBoolean(false);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    BlockingQueue<b> f7132e;

    public c(BlockingQueue<b> blockingQueue) {
        this.f7132e = blockingQueue;
    }
}
