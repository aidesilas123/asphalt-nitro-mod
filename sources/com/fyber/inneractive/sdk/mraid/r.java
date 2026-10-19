package com.fyber.inneractive.sdk.mraid;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import com.facebook.share.internal.ShareConstants;
import com.fyber.inneractive.sdk.util.IAlog;
import com.fyber.inneractive.sdk.util.k0;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class r extends a {
    public r(Map<String, String> map, com.fyber.inneractive.sdk.web.i iVar, k0 k0Var) {
        super(map, iVar, k0Var);
    }

    @Override // com.fyber.inneractive.sdk.mraid.b
    public void a() {
        String str = this.b.get(ShareConstants.MEDIA_URI);
        if (str == null || "".equals(str)) {
            this.c.a(g.STORE_PICTURE, "Image can't be stored with null or empty URL");
            IAlog.a("Mraid Store Picture -Invalid URI ", new Object[0]);
            return;
        }
        com.fyber.inneractive.sdk.web.i iVar = this.c;
        Context contextL = iVar.l();
        if (!com.fyber.inneractive.sdk.util.j.m()) {
            iVar.a(g.STORE_PICTURE, "Error downloading file - the device does not have an SD card mounted, or the Android permission is not granted.");
            IAlog.a("Error downloading file. Please check if the Android permission is not granted, or maybe the device does not have an SD card mounted? ", new Object[0]);
        } else if (contextL instanceof Activity) {
            new AlertDialog.Builder(iVar.l()).setTitle("Save Image").setMessage("Download image to Picture gallery?").setNegativeButton("Cancel", (DialogInterface.OnClickListener) null).setPositiveButton("Okay", new com.fyber.inneractive.sdk.web.q(iVar, str)).setCancelable(true).show();
        } else {
            com.fyber.inneractive.sdk.util.m.b.post(new com.fyber.inneractive.sdk.web.o(iVar, "Downloading image to Picture gallery..."));
            iVar.a(str);
        }
    }

    @Override // com.fyber.inneractive.sdk.mraid.a
    public String c() {
        return this.b.get(ShareConstants.MEDIA_URI);
    }
}
