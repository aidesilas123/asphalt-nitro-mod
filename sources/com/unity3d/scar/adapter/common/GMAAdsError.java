package com.unity3d.scar.adapter.common;

/* JADX INFO: loaded from: classes4.dex */
public class GMAAdsError extends j {
    public GMAAdsError(GMAEvent gMAEvent, String str, Object... objArr) {
        super(gMAEvent, str, objArr);
    }

    public GMAAdsError(GMAEvent gMAEvent, Object... objArr) {
        super(gMAEvent, null, objArr);
    }

    public static GMAAdsError AdNotLoadedError(com.unity3d.scar.adapter.common.scarads.c cVar) {
        String str = String.format("Cannot show ad that is not loaded for placement %s", cVar.c());
        return new GMAAdsError(GMAEvent.AD_NOT_LOADED_ERROR, str, cVar.c(), cVar.d(), str);
    }

    public static GMAAdsError AdapterCreationError(String str) {
        return new GMAAdsError(GMAEvent.SCAR_UNSUPPORTED, str, new Object[0]);
    }

    public static GMAAdsError InternalLoadError(com.unity3d.scar.adapter.common.scarads.c cVar, String str) {
        return new GMAAdsError(GMAEvent.INTERNAL_LOAD_ERROR, str, cVar.c(), cVar.d(), str);
    }

    public static GMAAdsError InternalShowError(com.unity3d.scar.adapter.common.scarads.c cVar, String str) {
        return new GMAAdsError(GMAEvent.INTERNAL_SHOW_ERROR, str, cVar.c(), cVar.d(), str);
    }

    public static GMAAdsError InternalSignalsError(String str) {
        return new GMAAdsError(GMAEvent.INTERNAL_SIGNALS_ERROR, str, str);
    }

    public static GMAAdsError NoAdsError(String str, String str2, String str3) {
        return new GMAAdsError(GMAEvent.NO_AD_ERROR, str3, str, str2, str3);
    }

    public static GMAAdsError QueryNotFoundError(com.unity3d.scar.adapter.common.scarads.c cVar) {
        String str = String.format("Missing queryInfoMetadata for ad %s", cVar.c());
        return new GMAAdsError(GMAEvent.QUERY_NOT_FOUND_ERROR, str, cVar.c(), cVar.d(), str);
    }

    @Override // com.unity3d.scar.adapter.common.j
    public String getDomain() {
        return "GMA";
    }
}
