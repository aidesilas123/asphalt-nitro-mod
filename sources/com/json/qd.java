package com.json;

import com.json.mediationsdk.logger.IronSourceLogger;
import com.json.mediationsdk.logger.IronSourceLoggerManager;

/* JADX INFO: loaded from: classes2.dex */
class qd {
    static pd a(String str, int i) {
        if ("ironbeast".equals(str)) {
            return new td(i);
        }
        if ("outcome".equals(str)) {
            return new sd(i);
        }
        if (i == 2) {
            return new td(i);
        }
        if (i == 3) {
            return new sd(i);
        }
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.NATIVE, "EventsFormatterFactory failed to instantiate a formatter (type: " + str + ", adUnit: " + i + ")", 2);
        return null;
    }
}
