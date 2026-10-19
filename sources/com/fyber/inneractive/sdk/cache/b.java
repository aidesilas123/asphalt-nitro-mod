package com.fyber.inneractive.sdk.cache;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import android.util.Base64;
import com.fyber.inneractive.sdk.util.IAlog;
import com.fyber.inneractive.sdk.util.l;
import java.io.ByteArrayOutputStream;

/* JADX INFO: loaded from: classes2.dex */
public class b implements a<Bitmap> {
    public final String a;

    public b(String str) {
        this.a = str;
    }

    @Override // com.fyber.inneractive.sdk.cache.a
    public Bitmap a(String str) throws Exception {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            byte[] bArrDecode = Base64.decode(str, 0);
            return BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length);
        } catch (Exception e2) {
            IAlog.a("IAimageLoaderUtil failed stringToBitMap with %s", e2.getMessage());
            return null;
        }
    }

    @Override // com.fyber.inneractive.sdk.cache.a
    public String a() {
        return this.a;
    }

    @Override // com.fyber.inneractive.sdk.cache.a
    public void a(Bitmap bitmap) {
        Bitmap bitmap2 = bitmap;
        if (bitmap2 != null) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            bitmap2.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
            l.a.getSharedPreferences("IAConfigurationPreferences", 0).edit().putString("dt.dynamic.icon.data", Base64.encodeToString(byteArrayOutputStream.toByteArray(), 0)).apply();
        }
    }

    @Override // com.fyber.inneractive.sdk.cache.a
    public String b() {
        return "dt.dynamic.icon.last.modified";
    }

    @Override // com.fyber.inneractive.sdk.cache.a
    public String c() {
        return String.valueOf(("dt.dynamic.icon_" + this.a).hashCode());
    }

    @Override // com.fyber.inneractive.sdk.cache.a
    public boolean d() {
        return true;
    }
}
