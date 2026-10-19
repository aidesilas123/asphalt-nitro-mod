package com.tapjoy.internal;

import android.app.Activity;
import android.content.Intent;
import com.google.android.gms.drive.DriveFile;
import com.tapjoy.TJAdUnitActivity;
import com.tapjoy.TJMemoryDataStorage;

/* JADX INFO: loaded from: classes4.dex */
public final class z4 {
    public final /* synthetic */ String a;
    public final /* synthetic */ com.tapjoy.o b;

    public z4(com.tapjoy.o oVar, String str) {
        this.b = oVar;
        this.a = str;
    }

    public final void a(Activity activity, String str, String str2) {
        if (str2 == null) {
            this.b.f8037d.C(str);
        } else {
            this.b.f8037d.r(str);
            this.b.f8037d.v(str2);
        }
        this.b.f8037d.u(true);
        this.b.f8037d.s(this.a);
        TJMemoryDataStorage.getInstance().b(this.b.f8037d.i(), this.b.f8037d);
        Intent intent = new Intent(this.b.b, (Class<?>) TJAdUnitActivity.class);
        intent.putExtra("placement_name", this.b.f8037d.i());
        intent.setFlags(DriveFile.MODE_READ_ONLY);
        activity.startActivity(intent);
    }
}
