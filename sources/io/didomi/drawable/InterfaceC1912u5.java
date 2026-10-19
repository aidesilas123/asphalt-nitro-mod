package io.didomi.drawable;

import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.google.gson.r.c;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import io.didomi.drawable.models.InternalPurpose;
import io.didomi.drawable.models.InternalVendor;
import io.didomi.drawable.models.SpecialFeature;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;

/* JADX INFO: renamed from: io.didomi.sdk.u5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001:\u0001\u0012R(\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u00028&@&X¦\u000e¢\u0006\f\u001a\u0004\b\u0004\u0010\u0005\"\u0004\b\u0006\u0010\u0007R(\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u00028&@&X¦\u000e¢\u0006\f\u001a\u0004\b\t\u0010\u0005\"\u0004\b\n\u0010\u0007R\u001a\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\r0\f8&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00110\f8&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u000fR\u001a\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00140\f8&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u000fR\u0014\u0010\u001a\u001a\u00020\u00178&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0019¨\u0006\u001b"}, d2 = {"Lio/didomi/sdk/u5;", "", "", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "()Ljava/util/Map;", "setIabPurposeIdsToDidomi", "(Ljava/util/Map;)V", "iabPurposeIdsToDidomi", "e", "setDidomiPurposeIdsToIab", "didomiPurposeIdsToIab", "", "Lio/didomi/sdk/models/InternalPurpose;", "c", "()Ljava/util/List;", Didomi.VIEW_PURPOSES, "Lio/didomi/sdk/models/InternalVendor;", "a", Didomi.VIEW_VENDORS, "Lio/didomi/sdk/models/SpecialFeature;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "specialFeatures", "Lio/didomi/sdk/u5$a;", InneractiveMediationDefs.GENDER_FEMALE, "()Lio/didomi/sdk/u5$a;", "languages", "android_release"}, mv = {1, 8, 0})
public interface InterfaceC1912u5 {

    /* JADX INFO: renamed from: io.didomi.sdk.u5$a, reason: from toString */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0013\b\u0097\b\u0018\u00002\u00020\u0001BM\u0012\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u0012\u0014\b\u0002\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u0006\u0012\u0014\b\u0002\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u0006¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\u000b\u001a\u00020\u0003HÖ\u0001¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\u000e\u001a\u00020\rHÖ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u001a\u0010\u0012\u001a\u00020\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0012\u0010\u0013R(\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0016@\u0016X\u0097\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0014\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\"\u0010\u0005\u001a\u00020\u00038\u0016@\u0016X\u0097\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\f\"\u0004\b\u001c\u0010\u001dR.\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u00068\u0016@\u0016X\u0097\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u001e\u001a\u0004\b\u0019\u0010\u001f\"\u0004\b \u0010!R.\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u00068\u0016@\u0016X\u0097\u000e¢\u0006\u0012\n\u0004\b\"\u0010\u001e\u001a\u0004\b\"\u0010\u001f\"\u0004\b#\u0010!¨\u0006$"}, d2 = {"Lio/didomi/sdk/u5$a;", "", "", "", "available", "defaultLanguage", "", "defaultCountries", "fallbackCodes", "<init>", "(Ljava/util/Set;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "a", "Ljava/util/Set;", "()Ljava/util/Set;", "setAvailable", "(Ljava/util/Set;)V", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/lang/String;", "c", "setDefaultLanguage", "(Ljava/lang/String;)V", "Ljava/util/Map;", "()Ljava/util/Map;", "setDefaultCountries", "(Ljava/util/Map;)V", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "setFallbackCodes", "android_release"}, mv = {1, 8, 0})
    public static /* data */ class Languages {

        /* JADX INFO: renamed from: a, reason: from kotlin metadata */
        @c("available")
        private Set<String> available;

        /* JADX INFO: renamed from: b, reason: from kotlin metadata */
        @c("default")
        private String defaultLanguage;

        /* JADX INFO: renamed from: c, reason: from kotlin metadata */
        @c("defaultCountries")
        private Map<String, String> defaultCountries;

        /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
        @c("fallbackCodes")
        private Map<String, String> fallbackCodes;

        public Languages() {
            this(null, null, null, null, 15, null);
        }

        public Languages(Set<String> available, String defaultLanguage, Map<String, String> defaultCountries, Map<String, String> fallbackCodes) {
            Intrinsics.checkNotNullParameter(available, "available");
            Intrinsics.checkNotNullParameter(defaultLanguage, "defaultLanguage");
            Intrinsics.checkNotNullParameter(defaultCountries, "defaultCountries");
            Intrinsics.checkNotNullParameter(fallbackCodes, "fallbackCodes");
            this.available = available;
            this.defaultLanguage = defaultLanguage;
            this.defaultCountries = defaultCountries;
            this.fallbackCodes = fallbackCodes;
        }

        public /* synthetic */ Languages(Set set, String str, Map map, Map map2, int i, n nVar) {
            this((i & 1) != 0 ? SetsKt__SetsKt.emptySet() : set, (i & 2) != 0 ? "en" : str, (i & 4) != 0 ? MapsKt__MapsKt.emptyMap() : map, (i & 8) != 0 ? MapsKt__MapsKt.emptyMap() : map2);
        }

        public Set<String> a() {
            return this.available;
        }

        public Map<String, String> b() {
            return this.defaultCountries;
        }

        /* JADX INFO: renamed from: c, reason: from getter */
        public String getDefaultLanguage() {
            return this.defaultLanguage;
        }

        public Map<String, String> d() {
            return this.fallbackCodes;
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Languages)) {
                return false;
            }
            Languages languages = (Languages) other;
            return Intrinsics.areEqual(a(), languages.a()) && Intrinsics.areEqual(getDefaultLanguage(), languages.getDefaultLanguage()) && Intrinsics.areEqual(b(), languages.b()) && Intrinsics.areEqual(d(), languages.d());
        }

        public int hashCode() {
            return (((((a().hashCode() * 31) + getDefaultLanguage().hashCode()) * 31) + b().hashCode()) * 31) + d().hashCode();
        }

        public String toString() {
            return "Languages(available=" + a() + ", defaultLanguage=" + getDefaultLanguage() + ", defaultCountries=" + b() + ", fallbackCodes=" + d() + ')';
        }
    }

    List<InternalVendor> a();

    List<SpecialFeature> b();

    List<InternalPurpose> c();

    Map<String, String> d();

    Map<String, String> e();

    Languages f();
}
