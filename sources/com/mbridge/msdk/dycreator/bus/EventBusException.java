package com.mbridge.msdk.dycreator.bus;

/* JADX INFO: loaded from: classes4.dex */
public class EventBusException extends RuntimeException {
    public EventBusException(String str) {
        super(str);
    }

    public EventBusException(String str, Throwable th) {
        super(str, th);
    }

    public EventBusException(Throwable th) {
        super(th);
    }
}
