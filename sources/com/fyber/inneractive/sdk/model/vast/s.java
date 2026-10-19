package com.fyber.inneractive.sdk.model.vast;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
import com.fyber.inneractive.sdk.util.v0;
import org.w3c.dom.Node;

/* JADX INFO: loaded from: classes2.dex */
public class s {
    public String a;
    public String b;
    public String c;

    public static s a(Node node) {
        if (node == null) {
            return null;
        }
        s sVar = new s();
        sVar.a = v0.b(node, NotificationCompat.CATEGORY_EVENT);
        sVar.b = v0.a(node);
        sVar.c = v0.b(node, TypedValues.CycleType.S_WAVE_OFFSET);
        return sVar;
    }

    public String toString() {
        return "VTracking:  name:" + this.a + " url:" + this.b + " offset:" + this.c;
    }
}
