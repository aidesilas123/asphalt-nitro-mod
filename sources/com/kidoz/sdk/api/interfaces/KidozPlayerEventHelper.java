package com.kidoz.sdk.api.interfaces;

import com.kidoz.sdk.api.general.EventMessage;
import com.kidoz.sdk.api.general.WidgetEventMessage;
import com.kidoz.sdk.api.general.enums.WidgetType;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.k;

/* JADX INFO: loaded from: classes4.dex */
public class KidozPlayerEventHelper {
    private IPlayerListener iPlayerListener;
    private WidgetType mWidgetType;

    /* JADX INFO: renamed from: com.kidoz.sdk.api.interfaces.KidozPlayerEventHelper$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$kidoz$sdk$api$general$EventMessage$MessageType;

        static {
            int[] iArr = new int[EventMessage.MessageType.values().length];
            $SwitchMap$com$kidoz$sdk$api$general$EventMessage$MessageType = iArr;
            try {
                iArr[EventMessage.MessageType.PLAYER_OPEN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$kidoz$sdk$api$general$EventMessage$MessageType[EventMessage.MessageType.PLAYER_CLOSE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$kidoz$sdk$api$general$EventMessage$MessageType[EventMessage.MessageType.MAXIMIZED_PLAYER_OPEN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$kidoz$sdk$api$general$EventMessage$MessageType[EventMessage.MessageType.MAXIMIZED_PLAYER_CLOSE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public interface IPlayerListener {
        void onClose(boolean z);

        void onOpen(boolean z);
    }

    public KidozPlayerEventHelper(IPlayerListener iPlayerListener, WidgetType widgetType) {
        this.iPlayerListener = iPlayerListener;
        this.mWidgetType = widgetType;
    }

    @k
    public void onHandleEvent(WidgetEventMessage widgetEventMessage) {
        if (widgetEventMessage == null || widgetEventMessage.getWidgetType() != this.mWidgetType || this.iPlayerListener == null) {
            return;
        }
        int i = AnonymousClass1.$SwitchMap$com$kidoz$sdk$api$general$EventMessage$MessageType[widgetEventMessage.getMessageType().ordinal()];
        if (i == 1) {
            this.iPlayerListener.onOpen(true);
            return;
        }
        if (i == 2) {
            this.iPlayerListener.onClose(true);
        } else if (i == 3) {
            this.iPlayerListener.onOpen(false);
        } else {
            if (i != 4) {
                return;
            }
            this.iPlayerListener.onClose(false);
        }
    }

    public void register() {
        if (EventBus.getDefault().i(this)) {
            return;
        }
        EventBus.getDefault().o(this);
    }

    public void unRegister() {
        if (EventBus.getDefault().i(this)) {
            EventBus.getDefault().q(this);
        }
    }
}
