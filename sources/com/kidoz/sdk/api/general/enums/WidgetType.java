package com.kidoz.sdk.api.general.enums;

import java.io.Serializable;

/* JADX INFO: loaded from: classes4.dex */
public enum WidgetType implements Serializable {
    WIDGET_TYPE_NONE(0),
    WIDGET_TYPE_FEED(1),
    WIDGET_TYPE_PANEL(2),
    WIDGET_TYPE_BANNER(3),
    WIDGET_TYPE_FLEXI_VIEW(4),
    WIDGET_TYPE_INTERSTITIAL(5),
    WIDGET_TYPE_VIDEO_UNIT(6),
    WIDGET_TYPE_INTERSTITIAL_REWARDED(7),
    WIDGET_TYPE_TOONS_TV(8);

    private final int value;

    WidgetType(int i) {
        this.value = i;
    }

    public static WidgetType createFromString(String str) {
        WidgetType widgetType;
        WidgetType widgetType2 = WIDGET_TYPE_NONE;
        if (str == null) {
            return widgetType2;
        }
        try {
            switch (Integer.parseInt(str)) {
                case 1:
                    widgetType = WIDGET_TYPE_FEED;
                    break;
                case 2:
                    widgetType = WIDGET_TYPE_PANEL;
                    break;
                case 3:
                    widgetType = WIDGET_TYPE_BANNER;
                    break;
                case 4:
                    widgetType = WIDGET_TYPE_FLEXI_VIEW;
                    break;
                case 5:
                default:
                    return widgetType2;
                case 6:
                    widgetType = WIDGET_TYPE_VIDEO_UNIT;
                    break;
                case 7:
                    widgetType = WIDGET_TYPE_INTERSTITIAL_REWARDED;
                    break;
                case 8:
                    widgetType = WIDGET_TYPE_TOONS_TV;
                    break;
            }
            return widgetType;
        } catch (Exception unused) {
            return widgetType2;
        }
    }

    public String getStringValue() {
        return this.value + "";
    }

    public int getValue() {
        return this.value;
    }
}
