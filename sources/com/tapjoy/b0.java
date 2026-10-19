package com.tapjoy;

import android.content.Context;
import android.content.SharedPreferences;
import java.io.File;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes4.dex */
public class b0 extends ConcurrentHashMap<String, TapjoyCachedAssetData> {
    public final Context a;
    public final int b;

    public b0(Context context, int i) {
        this.b = -1;
        this.a = context;
        this.b = i;
    }

    @Override // java.util.concurrent.ConcurrentHashMap, java.util.AbstractMap, java.util.Map
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public TapjoyCachedAssetData put(String str, TapjoyCachedAssetData tapjoyCachedAssetData) {
        TapjoyLog.d("TapjoyCacheMap", "TapjoyCacheMap::put() -- key: " + str + " assetURL: " + tapjoyCachedAssetData.c());
        if (tapjoyCachedAssetData.g() <= System.currentTimeMillis() / 1000) {
            return null;
        }
        if (size() == this.b) {
            long j = -1;
            String key = "";
            for (Map.Entry<String, TapjoyCachedAssetData> entry : entrySet()) {
                long jI = entry.getValue().i();
                if (j == 0 || jI < j) {
                    key = entry.getKey();
                    j = jI;
                }
            }
            remove(key);
        }
        SharedPreferences.Editor editorEdit = this.a.getSharedPreferences("tapjoyCacheData", 0).edit();
        editorEdit.putString(tapjoyCachedAssetData.d(), tapjoyCachedAssetData.q());
        editorEdit.apply();
        return (TapjoyCachedAssetData) super.put(str, tapjoyCachedAssetData);
    }

    @Override // java.util.concurrent.ConcurrentHashMap, java.util.AbstractMap, java.util.Map
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public TapjoyCachedAssetData remove(Object obj) {
        if (!containsKey(obj)) {
            return null;
        }
        SharedPreferences.Editor editorEdit = this.a.getSharedPreferences("tapjoyCacheData", 0).edit();
        editorEdit.remove(get(obj).d());
        editorEdit.apply();
        String strD = get(obj).d();
        if (strD != null && strD.length() > 0) {
            TapjoyUtil.deleteFileOrDirectory(new File(strD));
        }
        TapjoyLog.d("TapjoyCacheMap", "TapjoyCacheMap::remove() -- key: " + obj);
        return (TapjoyCachedAssetData) super.remove(obj);
    }

    @Override // java.util.concurrent.ConcurrentHashMap, java.util.Map, java.util.concurrent.ConcurrentMap
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public TapjoyCachedAssetData replace(String str, TapjoyCachedAssetData tapjoyCachedAssetData) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.concurrent.ConcurrentHashMap, java.util.AbstractMap, java.util.Map
    public void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.concurrent.ConcurrentHashMap, java.util.Map, java.util.concurrent.ConcurrentMap
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public boolean replace(String str, TapjoyCachedAssetData tapjoyCachedAssetData, TapjoyCachedAssetData tapjoyCachedAssetData2) {
        throw new UnsupportedOperationException();
    }
}
