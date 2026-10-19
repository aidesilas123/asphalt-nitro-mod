package com.applovin.impl.adview;

import android.graphics.BitmapFactory;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.Base64;
import androidx.annotation.Nullable;
import com.applovin.impl.sdk.utils.StringUtils;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class p {
    private final Map<String, Object> agg;
    private final com.applovin.impl.sdk.n sdk;

    public p(Map<String, Object> map, com.applovin.impl.sdk.n nVar) {
        this.agg = map;
        this.sdk = nVar;
    }

    private boolean U(@Nullable Object obj) {
        return (obj instanceof String) && StringUtils.isValidString((String) obj);
    }

    public String getIdentifier() {
        return "google watermark";
    }

    @Nullable
    public Drawable rM() {
        Object obj = this.agg.get("google_watermark");
        if (!U(obj)) {
            this.sdk.BN();
            if (com.applovin.impl.sdk.x.Fn()) {
                this.sdk.BN().i("GoogleWatermarkGenerator", "Unable to render invalid watermark: " + obj);
            }
            return null;
        }
        try {
            byte[] bArrDecode = Base64.decode((String) obj, 0);
            BitmapDrawable bitmapDrawable = new BitmapDrawable(com.applovin.impl.sdk.n.getApplicationContext().getResources(), BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length));
            Shader.TileMode tileMode = Shader.TileMode.REPEAT;
            bitmapDrawable.setTileModeXY(tileMode, tileMode);
            return bitmapDrawable;
        } catch (Throwable th) {
            this.sdk.BN();
            if (com.applovin.impl.sdk.x.Fn()) {
                this.sdk.BN().c("GoogleWatermarkGenerator", "Failed to render watermark", th);
            }
            return null;
        }
    }

    public boolean rN() {
        return U(this.agg.get("google_watermark"));
    }
}
