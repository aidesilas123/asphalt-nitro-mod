package com.applovin.impl.b;

import android.content.Context;
import android.net.Uri;
import android.webkit.URLUtil;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.applovin.impl.sdk.utils.y;
import com.applovin.impl.sdk.x;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class g {
    private Uri aXF;
    private Uri aXG;
    private int dE;
    private int height;
    public final Set<k> aXi = new HashSet();
    public final Set<k> aXE = new HashSet();

    @Nullable
    public static g a(y yVar, com.applovin.impl.sdk.n nVar) {
        if (yVar == null) {
            throw new IllegalArgumentException("No node specified.");
        }
        if (nVar == null) {
            throw new IllegalArgumentException("No sdk specified.");
        }
        y yVarDK = yVar.dK("StaticResource");
        if (yVarDK == null || !URLUtil.isValidUrl(yVarDK.LK())) {
            nVar.BN();
            if (!x.Fn()) {
                return null;
            }
            nVar.BN().i("VastIndustryIcon", "Unable to create industry icon.  No valid image URL found.");
            return null;
        }
        g gVar = new g();
        gVar.aXF = Uri.parse(yVarDK.LK());
        y yVarDL = yVar.dL("IconClickThrough");
        if (yVarDL != null && URLUtil.isValidUrl(yVarDL.LK())) {
            gVar.aXG = Uri.parse(yVarDL.LK());
        }
        String str = yVar.LJ().get("width");
        int i = 0;
        int i2 = (str == null || Integer.parseInt(str) <= 0) ? 0 : Integer.parseInt(str);
        String str2 = yVar.LJ().get("height");
        if (str2 != null && Integer.parseInt(str2) > 0) {
            i = Integer.parseInt(str2);
        }
        int iIntValue = ((Integer) nVar.a(com.applovin.impl.sdk.c.b.aPz)).intValue();
        if (i2 <= 0 || i <= 0) {
            gVar.height = iIntValue;
            gVar.dE = iIntValue;
        } else {
            double d2 = i2 / i;
            int iMin = Math.min(Math.max(i2, i), iIntValue);
            if (i2 >= i) {
                gVar.dE = iMin;
                gVar.height = (int) (((double) iMin) / d2);
            } else {
                gVar.height = iMin;
                gVar.dE = (int) (((double) iMin) * d2);
            }
        }
        return gVar;
    }

    public static ImageView b(Uri uri, Context context, com.applovin.impl.sdk.n nVar) {
        ImageView imageView = new ImageView(context);
        imageView.setScaleType(ImageView.ScaleType.FIT_XY);
        imageView.setClickable(true);
        imageView.setVisibility(8);
        com.applovin.impl.sdk.utils.l.a(imageView, uri.toString(), nVar);
        return imageView;
    }

    @NonNull
    public Set<k> Mp() {
        return this.aXi;
    }

    @NonNull
    public Uri Mv() {
        return this.aXF;
    }

    @Nullable
    public Uri Mw() {
        return this.aXG;
    }

    @NonNull
    public Set<k> Mx() {
        return this.aXE;
    }

    public int getHeight() {
        return this.height;
    }

    public int getWidth() {
        return this.dE;
    }

    @NonNull
    public String toString() {
        return "VastIndustryIcon{imageUri='" + Mv() + "', clickUri='" + Mw() + "', width=" + getWidth() + ", height=" + getHeight() + "}";
    }
}
