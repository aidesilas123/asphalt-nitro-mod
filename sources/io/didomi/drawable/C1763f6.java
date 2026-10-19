package io.didomi.drawable;

import android.content.SharedPreferences;
import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.unity3d.services.ads.gmascar.bridges.mobileads.MobileAdsBridge;
import io.didomi.drawable.InterfaceC1780h3;
import io.didomi.drawable.consent.model.ConsentToken;
import io.didomi.drawable.models.InternalPurpose;
import io.didomi.drawable.models.InternalVendor;
import io.didomi.iabtcf.encoder.PublisherRestrictionEntry;
import io.didomi.iabtcf.encoder.TCStringEncoder;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: io.didomi.sdk.f6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u001c\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0011\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0093\u0001\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00042\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00040\f2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00040\f2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00040\f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00040\f2\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00040\f2\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00120\f2\u0006\u0010\u0014\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u0017\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0019\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ!\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00040\f2\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u001e0\u001d¢\u0006\u0004\b\u0016\u0010 J#\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00120\f2\f\u0010\"\u001a\b\u0012\u0004\u0012\u00020!0\fH\u0000¢\u0006\u0004\b\u0016\u0010#J#\u0010\u0016\u001a\u00020\b2\f\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00040\f2\u0006\u0010%\u001a\u00020\u0004¢\u0006\u0004\b\u0016\u0010&JE\u0010\u0016\u001a\u00020\u001a2\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010(\u001a\u00020'2\u0006\u0010*\u001a\u00020)2\u0006\u0010,\u001a\u00020+2\f\u0010\"\u001a\b\u0012\u0004\u0012\u00020!0\f2\u0006\u0010-\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0016\u0010.J\u001f\u0010\u0016\u001a\u00020\u001a2\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u00100\u001a\u00020/H\u0016¢\u0006\u0004\b\u0016\u00101J\u0019\u0010\u0016\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0019\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u0016\u00102R\u001a\u00106\u001a\u00020\u00048\u0006X\u0086D¢\u0006\f\n\u0004\b\u001b\u00103\u001a\u0004\b4\u00105R\u0014\u00108\u001a\u00020\u00048\u0002X\u0082D¢\u0006\u0006\n\u0004\b7\u00103R\u0014\u0010:\u001a\u00020\u00048\u0002X\u0082D¢\u0006\u0006\n\u0004\b9\u00103R\u0014\u0010<\u001a\u00020\u00048\u0002X\u0082D¢\u0006\u0006\n\u0004\b;\u00103R\u001a\u0010?\u001a\u00020\u00048\u0016X\u0096D¢\u0006\f\n\u0004\b=\u00103\u001a\u0004\b>\u00105¨\u0006@"}, d2 = {"Lio/didomi/sdk/f6;", "Lio/didomi/sdk/h3;", "<init>", "()V", "", "cmpId", "Ljava/util/Date;", "updated", "", "consentLanguage", "vendorListVersion", "tcfPolicyVersion", "", "specialFeaturesOptIns", "purposesConsents", "purposesLITransparency", "vendorsConsent", "vendorsLI", "Lio/didomi/iabtcf/encoder/PublisherRestrictionEntry;", "publisherRestrictionEntries", "publisherCountry", "Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;", "a", "(ILjava/util/Date;Ljava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Lio/didomi/iabtcf/encoder/TCStringEncoder$Builder;", "Landroid/content/SharedPreferences;", "sharedPreferences", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Landroid/content/SharedPreferences;)V", "", "Lio/didomi/sdk/models/InternalVendor;", Didomi.VIEW_VENDORS, "(Ljava/lang/Iterable;)Ljava/util/List;", "Lio/didomi/sdk/k4;", "publisherRestrictions", "(Ljava/util/List;)Ljava/util/List;", "ids", "size", "(Ljava/util/List;I)Ljava/lang/String;", "Lio/didomi/sdk/consent/model/ConsentToken;", "consentToken", "Lio/didomi/sdk/k;", "appConfiguration", "Lio/didomi/sdk/d3;", "vendorList", "languageCode", "(Landroid/content/SharedPreferences;Lio/didomi/sdk/consent/model/ConsentToken;Lio/didomi/sdk/k;Lio/didomi/sdk/d3;Ljava/util/List;Ljava/lang/String;)V", "", "subjectToGDPR", "(Landroid/content/SharedPreferences;Z)V", "(Landroid/content/SharedPreferences;)Ljava/lang/String;", "I", "getTcfVersion", "()I", "tcfVersion", "c", "consentScreen", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "sizeSpecialFeaturesOptins", "e", "sizePurposes", InneractiveMediationDefs.GENDER_FEMALE, MobileAdsBridge.versionMethodName, "version", "android_release"}, mv = {1, 8, 0})
public final class C1763f6 implements InterfaceC1780h3 {

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private final int consentScreen;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final int tcfVersion = 2;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final int sizeSpecialFeaturesOptins = 12;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private final int sizePurposes = 24;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private final int version = 2;

    public C1763f6() {
        Log.d$default("Enabling support for TCFv2", null, 2, null);
    }

    private final TCStringEncoder.Builder a(int cmpId, Date updated, String consentLanguage, int vendorListVersion, int tcfPolicyVersion, List<Integer> specialFeaturesOptIns, List<Integer> purposesConsents, List<Integer> purposesLITransparency, List<Integer> vendorsConsent, List<Integer> vendorsLI, List<? extends PublisherRestrictionEntry> publisherRestrictionEntries, String publisherCountry) {
        TCStringEncoder.Builder tcStringBuilder = new TCStringEncoder.Builder().version(this.tcfVersion).created(updated).lastUpdated(updated).cmpId(cmpId).cmpVersion(1).consentScreen(this.consentScreen).consentLanguage(consentLanguage).vendorListVersion(vendorListVersion).tcfPolicyVersion(tcfPolicyVersion).isServiceSpecific(true).useNonStandardStacks(false).purposeOneTreatment(false).publisherCC(publisherCountry);
        Iterator<Integer> it = specialFeaturesOptIns.iterator();
        while (it.hasNext()) {
            tcStringBuilder.addSpecialFeatureOptIns(it.next().intValue());
        }
        Iterator<Integer> it2 = purposesConsents.iterator();
        while (it2.hasNext()) {
            tcStringBuilder.addPurposesConsent(it2.next().intValue());
        }
        Iterator<Integer> it3 = purposesLITransparency.iterator();
        while (it3.hasNext()) {
            tcStringBuilder.addPurposesLITransparency(it3.next().intValue());
        }
        Iterator<Integer> it4 = vendorsConsent.iterator();
        while (it4.hasNext()) {
            tcStringBuilder.addVendorConsent(it4.next().intValue());
        }
        Iterator<Integer> it5 = vendorsLI.iterator();
        while (it5.hasNext()) {
            tcStringBuilder.addVendorLegitimateInterest(it5.next().intValue());
        }
        Iterator<? extends PublisherRestrictionEntry> it6 = publisherRestrictionEntries.iterator();
        while (it6.hasNext()) {
            tcStringBuilder.addPublisherRestrictionEntry(it6.next());
        }
        Intrinsics.checkNotNullExpressionValue(tcStringBuilder, "tcStringBuilder");
        return tcStringBuilder;
    }

    @Override // io.didomi.drawable.InterfaceC1780h3
    public String a(SharedPreferences sharedPreferences) {
        Intrinsics.checkNotNullParameter(sharedPreferences, "sharedPreferences");
        return sharedPreferences.getString("IABTCF_TCString", null);
    }

    public final String a(List<Integer> ids, int size) {
        Intrinsics.checkNotNullParameter(ids, "ids");
        int i = 1;
        String str = "";
        if (1 <= size) {
            while (true) {
                str = str + (ids.contains(Integer.valueOf(i)) ? 1 : 0);
                if (i == size) {
                    break;
                }
                i++;
            }
        }
        return str;
    }

    public final List<Integer> a(Iterable<InternalVendor> vendors) {
        Integer numValueOf;
        Intrinsics.checkNotNullParameter(vendors, "vendors");
        ArrayList arrayList = new ArrayList();
        for (InternalVendor internalVendor : vendors) {
            Integer num = null;
            if (Intrinsics.areEqual(internalVendor.getNamespace(), "iab")) {
                try {
                    numValueOf = Integer.valueOf(Integer.parseInt(internalVendor.getId()));
                    num = numValueOf;
                } catch (Exception e2) {
                    Log.e("Invalid vendor ID \"" + internalVendor.getId() + "\" cannot be converted to an integer", e2);
                }
            } else if (internalVendor.getIabId() != null) {
                try {
                    String iabId = internalVendor.getIabId();
                    if (iabId != null) {
                        numValueOf = Integer.valueOf(Integer.parseInt(iabId));
                        num = numValueOf;
                    }
                } catch (Exception e3) {
                    Log.e("Invalid IAB vendor ID \"" + internalVendor.getIabId() + "\" cannot be converted to an integer", e3);
                }
            }
            if (num != null) {
                arrayList.add(num);
            }
        }
        return CollectionsKt___CollectionsKt.distinct(arrayList);
    }

    public final List<PublisherRestrictionEntry> a(List<PublisherRestriction> publisherRestrictions) {
        Set<Integer> setE;
        Intrinsics.checkNotNullParameter(publisherRestrictions, "publisherRestrictions");
        ArrayList arrayList = new ArrayList();
        for (PublisherRestriction publisherRestriction : publisherRestrictions) {
            PublisherRestrictionEntry publisherRestrictionEntryBuild = (publisherRestriction.getSpecialFeature() || (setE = publisherRestriction.e()) == null || setE.isEmpty()) ? null : PublisherRestrictionEntry.newBuilder().purposeId(publisherRestriction.getPurposeIabId()).restrictionType(publisherRestriction.getRestrictionType()).addVendor(C1850o3.a.a(setE)).build();
            if (publisherRestrictionEntryBuild != null) {
                arrayList.add(publisherRestrictionEntryBuild);
            }
        }
        return arrayList;
    }

    @Override // io.didomi.drawable.InterfaceC1780h3
    public void a(SharedPreferences sharedPreferences, ConsentToken consentToken, C1806k appConfiguration, InterfaceC1740d3 vendorList, List<PublisherRestriction> publisherRestrictions, String languageCode) {
        Intrinsics.checkNotNullParameter(sharedPreferences, "sharedPreferences");
        Intrinsics.checkNotNullParameter(consentToken, "consentToken");
        Intrinsics.checkNotNullParameter(appConfiguration, "appConfiguration");
        Intrinsics.checkNotNullParameter(vendorList, "vendorList");
        Intrinsics.checkNotNullParameter(publisherRestrictions, "publisherRestrictions");
        Intrinsics.checkNotNullParameter(languageCode, "languageCode");
        boolean zAreEqual = Intrinsics.areEqual(C1816l.d(appConfiguration), "2.2");
        int iA = C1816l.a(appConfiguration);
        Collection<InternalPurpose> collectionValues = consentToken.getEnabledPurposes().values();
        ArrayList arrayList = new ArrayList();
        for (Object obj : collectionValues) {
            InternalPurpose internalPurpose = (InternalPurpose) obj;
            if (!zAreEqual || internalPurpose.getIabConsentRequired$android_release()) {
                if (internalPurpose.isSpecialFeature()) {
                    arrayList.add(obj);
                }
            }
        }
        List<Integer> listA = C1860p3.a((Iterable<InternalPurpose>) arrayList);
        Collection<InternalPurpose> collectionValues2 = consentToken.getEnabledPurposes().values();
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : collectionValues2) {
            InternalPurpose internalPurpose2 = (InternalPurpose) obj2;
            if (!zAreEqual || internalPurpose2.getIabConsentRequired$android_release()) {
                if (!internalPurpose2.isSpecialFeature()) {
                    arrayList2.add(obj2);
                }
            }
        }
        List<Integer> listA2 = C1860p3.a((Iterable<InternalPurpose>) arrayList2);
        Collection<InternalPurpose> collectionValues3 = consentToken.getEnabledLegitimatePurposes().values();
        ArrayList arrayList3 = new ArrayList();
        for (Object obj3 : collectionValues3) {
            InternalPurpose internalPurpose3 = (InternalPurpose) obj3;
            if (!zAreEqual || internalPurpose3.getIabLiRequired$android_release()) {
                arrayList3.add(obj3);
            }
        }
        List<Integer> listA3 = C1860p3.a((Iterable<InternalPurpose>) arrayList3);
        List<Integer> listA4 = a(consentToken.getEnabledVendors().values());
        List<Integer> listA5 = a(consentToken.getEnabledLegitimateVendors().values());
        List<PublisherRestrictionEntry> listA6 = a(publisherRestrictions);
        String strB = C1816l.b(appConfiguration.a());
        Date updated = consentToken.getUpdated();
        String strSubstring = languageCode.substring(0, 2);
        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
        TCStringEncoder.Builder builderA = a(iA, updated, strSubstring, vendorList.getVersion(), vendorList.getTcfPolicyVersion(), listA, listA2, listA3, listA4, listA5, listA6, strB);
        SharedPreferences.Editor editor = sharedPreferences.edit();
        editor.putString("IABTCF_TCString", builderA.encode());
        InterfaceC1780h3.a aVar = InterfaceC1780h3.a;
        Intrinsics.checkNotNullExpressionValue(editor, "editor");
        aVar.a(editor, iA);
        editor.putInt("IABTCF_PolicyVersion", vendorList.getTcfPolicyVersion());
        editor.putString("IABTCF_PublisherCC", strB);
        editor.putInt("IABTCF_PurposeOneTreatment", 0);
        if (Intrinsics.areEqual(C1816l.d(appConfiguration), "2.2")) {
            editor.putInt("IABTCF_UseNonStandardTexts", 0);
        } else {
            editor.putInt("IABTCF_UseNonStandardStacks", 0);
        }
        editor.putString("IABTCF_SpecialFeaturesOptIns", a(listA, this.sizeSpecialFeaturesOptins));
        editor.putString("IABTCF_PurposeConsents", a(listA2, this.sizePurposes));
        editor.putString("IABTCF_PurposeLegitimateInterests", a(listA3, this.sizePurposes));
        editor.putString("IABTCF_VendorConsents", a(listA4, vendorList.f()));
        editor.putString("IABTCF_VendorLegitimateInterests", a(listA5, vendorList.f()));
        editor.apply();
    }

    @Override // io.didomi.drawable.InterfaceC1780h3
    public void a(SharedPreferences sharedPreferences, boolean subjectToGDPR) {
        Intrinsics.checkNotNullParameter(sharedPreferences, "sharedPreferences");
        if (sharedPreferences.getInt("IABTCF_gdprApplies", -1) != subjectToGDPR) {
            sharedPreferences.edit().putInt("IABTCF_gdprApplies", subjectToGDPR ? 1 : 0).apply();
        }
    }

    @Override // io.didomi.drawable.InterfaceC1780h3
    public void a(H h, SharedPreferences sharedPreferences) {
        InterfaceC1780h3.b.a(this, h, sharedPreferences);
    }

    @Override // io.didomi.drawable.InterfaceC1780h3
    public void b(SharedPreferences sharedPreferences) {
        Intrinsics.checkNotNullParameter(sharedPreferences, "sharedPreferences");
        C1753e6.a.a(sharedPreferences, new String[]{"IABConsent_CMPPresent", "IABConsent_SubjectToGDPR", "IABConsent_ConsentString", "IABConsent_ParsedPurposeConsents", "IABConsent_ParsedVendorConsents"});
    }

    @Override // io.didomi.drawable.InterfaceC1780h3
    public int getVersion() {
        return this.version;
    }
}
