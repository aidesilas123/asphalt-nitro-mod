package com.kidoz.sdk.api.picasso_related;

import android.content.Context;
import com.squareup.imagelib.Picasso;

/* JADX INFO: loaded from: classes4.dex */
public class PicassoOk {
    private static Picasso mPicassoInstance;

    public static Picasso getPicasso(Context context) {
        if (mPicassoInstance == null) {
            mPicassoInstance = new Picasso.b(context).b(false).a();
        }
        return mPicassoInstance;
    }
}
