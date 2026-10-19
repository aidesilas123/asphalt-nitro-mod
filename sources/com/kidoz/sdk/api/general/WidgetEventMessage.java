package com.kidoz.sdk.api.general;

import com.kidoz.sdk.api.general.EventMessage;
import com.kidoz.sdk.api.general.enums.WidgetType;

/* JADX INFO: loaded from: classes4.dex */
public class WidgetEventMessage extends EventMessage {
    private WidgetType mWidgetType;

    public WidgetEventMessage(EventMessage.MessageType messageType, WidgetType widgetType) {
        super(messageType);
        this.mWidgetType = widgetType;
    }

    public WidgetType getWidgetType() {
        return this.mWidgetType;
    }
}
