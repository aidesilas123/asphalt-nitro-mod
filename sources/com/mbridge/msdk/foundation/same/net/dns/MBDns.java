package com.mbridge.msdk.foundation.same.net.dns;

import android.text.TextUtils;
import com.mbridge.msdk.c.c;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.thrid.okhttp.Dns;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class MBDns implements Dns {
    private static String TAG = "MBDns";

    @Override // com.mbridge.msdk.thrid.okhttp.Dns
    public List<InetAddress> lookup(String str) throws UnknownHostException {
        aa.a(TAG, "host:" + str);
        aa.a(TAG, "host str:" + Arrays.toString(InetAddress.getAllByName(str)));
        try {
            String strB = c.a().b(str);
            if (!TextUtils.isEmpty(strB)) {
                ArrayList arrayList = new ArrayList(Arrays.asList(InetAddress.getAllByName(strB)));
                aa.a(TAG, "ip:" + strB);
                return arrayList;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return Dns.SYSTEM.lookup(str);
    }
}
