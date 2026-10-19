package com.kidoz.events;

import com.kidoz.sdk.api.general.EventMessage;
import com.kidoz.sdk.api.interfaces.SDKEventListener;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.k;

/* JADX INFO: compiled from: SDKGeneralEventSignObj.java */
/* JADX INFO: loaded from: classes4.dex */
public final class c {
    private SDKEventListener a;

    /* JADX INFO: compiled from: SDKGeneralEventSignObj.java */
    static /* synthetic */ class a {
        static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[EventMessage.MessageType.values().length];
            a = iArr;
            try {
                iArr[EventMessage.MessageType.INIT_SDK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[EventMessage.MessageType.INIT_SDK_FAIL_NO_SERVER_RESULT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[EventMessage.MessageType.INIT_SDK_FAIL_STYLE_PARSER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[EventMessage.MessageType.INIT_SDK_FAIL_VALIDATION_EXCEPTION.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public void a(SDKEventListener sDKEventListener) {
        this.a = sDKEventListener;
    }

    @k
    public void onHandleEvent(EventMessage eventMessage) {
        if (this.a != null) {
            int i = a.a[eventMessage.getMessageType().ordinal()];
            if (i == 1) {
                this.a.onInitSuccess();
            } else if (i == 2) {
                this.a.onInitError("SDK init failed: No server result.");
            } else if (i == 3) {
                this.a.onInitError("SDK init failed: Style Parser Error.");
            } else if (i == 4) {
                this.a.onInitError("SDK init failed: Validation exception.");
            }
        }
        EventBus.getDefault().q(this);
    }
}
