package com.google.firebase.messaging;

import android.os.Bundle;
import androidx.collection.ArrayMap;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes3.dex */
public final class Constants {
    public static final long a = TimeUnit.MINUTES.toMillis(3);

    public static final class AnalyticsKeys {
        private AnalyticsKeys() {
        }
    }

    public static final class FirelogAnalytics {
        private FirelogAnalytics() {
        }
    }

    public static final class MessageNotificationKeys {
        private MessageNotificationKeys() {
        }
    }

    public static final class MessagePayloadKeys {
        private MessagePayloadKeys() {
        }

        public static ArrayMap<String, String> extractDeveloperDefinedPayload(Bundle bundle) {
            ArrayMap<String, String> arrayMap = new ArrayMap<>();
            for (String str : bundle.keySet()) {
                Object obj = bundle.get(str);
                if (obj instanceof String) {
                    String str2 = (String) obj;
                    if (!str.startsWith("google.") && !str.startsWith("gcm.") && !str.equals(TypedValues.TransitionType.S_FROM) && !str.equals("message_type") && !str.equals("collapse_key")) {
                        arrayMap.put(str, str2);
                    }
                }
            }
            return arrayMap;
        }
    }

    public static final class MessageTypes {
        private MessageTypes() {
        }
    }

    public static final class ScionAnalytics {

        public @interface MessageType {
        }

        private ScionAnalytics() {
        }
    }

    private Constants() {
    }
}
