package com.mbridge.msdk.thrid.okhttp;

import java.net.Socket;

/* JADX INFO: loaded from: classes4.dex */
public interface Connection {
    Handshake handshake();

    Protocol protocol();

    Route route();

    Socket socket();
}
