package com.bytedance.sdk.openadsdk.core.g.c;

import android.content.Context;
import android.graphics.Point;
import android.view.Display;
import android.view.WindowManager;
import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.core.o;
import com.bytedance.sdk.openadsdk.utils.ad;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: compiled from: ResourceHelper.java */
/* JADX INFO: loaded from: classes2.dex */
public class a {
    public static final Set<String> a = new HashSet<String>() { // from class: com.bytedance.sdk.openadsdk.core.g.c.a.1
        {
            add("image/jpeg");
            add("image/png");
            add("image/bmp");
            add("image/gif");
            add("image/jpg");
        }
    };
    public static Set<String> b = new HashSet<String>() { // from class: com.bytedance.sdk.openadsdk.core.g.c.a.2
        {
            add("application/x-javascript");
        }
    };

    /* JADX INFO: renamed from: com.bytedance.sdk.openadsdk.core.g.c.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ResourceHelper.java */
    public enum EnumC0136a {
        NONE,
        IMAGE,
        JAVASCRIPT
    }

    /* JADX INFO: compiled from: ResourceHelper.java */
    public enum b {
        HTML_RESOURCE,
        STATIC_RESOURCE,
        IFRAME_RESOURCE
    }

    @NonNull
    public static Point a(Context context, int i, int i2, b bVar) {
        if (context == null) {
            context = o.a();
        }
        Point point = new Point(i, i2);
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        int width = defaultDisplay.getWidth();
        int height = defaultDisplay.getHeight();
        int iB = ad.b(context, i);
        int iB2 = ad.b(context, i2);
        if (iB <= width && iB2 <= height) {
            return point;
        }
        Point point2 = new Point();
        if (b.HTML_RESOURCE == bVar) {
            point2.x = Math.min(width, iB);
            point2.y = Math.min(height, iB2);
        } else {
            float f2 = iB;
            float f3 = f2 / width;
            float f4 = iB2;
            float f5 = f4 / height;
            if (f3 >= f5) {
                point2.x = width;
                point2.y = (int) (f4 / f3);
            } else {
                point2.x = (int) (f2 / f5);
                point2.y = height;
            }
        }
        int i3 = point2.x;
        if (i3 < 0 || point2.y < 0) {
            return point;
        }
        point2.x = ad.c(context, i3);
        point2.y = ad.c(context, point2.y);
        return point2;
    }
}
