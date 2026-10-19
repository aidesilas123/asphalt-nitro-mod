###### Class io.didomi.drawable.J0 (io.didomi.sdk.J0)
.class public interface abstract Lio/didomi/sdk/J0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00e6\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008g\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0007H&\u00a2\u0006\u0004\u0008\u0005\u0010\tJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nH&\u00a2\u0006\u0004\u0008\u0005\u0010\u000cJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rH&\u00a2\u0006\u0004\u0008\u0005\u0010\u000fJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0010H&\u00a2\u0006\u0004\u0008\u0005\u0010\u0012J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u0013H&\u00a2\u0006\u0004\u0008\u0005\u0010\u0015J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u0016H&\u00a2\u0006\u0004\u0008\u0005\u0010\u0018J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u0019H&\u00a2\u0006\u0004\u0008\u0005\u0010\u001bJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\u001cH&\u00a2\u0006\u0004\u0008\u0005\u0010\u001eJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u001fH&\u00a2\u0006\u0004\u0008\u0005\u0010!J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010#\u001a\u00020\"H&\u00a2\u0006\u0004\u0008\u0005\u0010$J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010&\u001a\u00020%H&\u00a2\u0006\u0004\u0008\u0005\u0010\'J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010)\u001a\u00020(H&\u00a2\u0006\u0004\u0008\u0005\u0010*J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010,\u001a\u00020+H&\u00a2\u0006\u0004\u0008\u0005\u0010-J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010/\u001a\u00020.H&\u00a2\u0006\u0004\u0008\u0005\u00100J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u00102\u001a\u000201H&\u00a2\u0006\u0004\u0008\u0005\u00103J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u00105\u001a\u000204H&\u00a2\u0006\u0004\u0008\u0005\u00106J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u00108\u001a\u000207H&\u00a2\u0006\u0004\u0008\u0005\u00109J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010;\u001a\u00020:H&\u00a2\u0006\u0004\u0008\u0005\u0010<J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010>\u001a\u00020=H&\u00a2\u0006\u0004\u0008\u0005\u0010?J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010A\u001a\u00020@H&\u00a2\u0006\u0004\u0008\u0005\u0010BJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010D\u001a\u00020CH&\u00a2\u0006\u0004\u0008\u0005\u0010EJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010G\u001a\u00020FH&\u00a2\u0006\u0004\u0008\u0005\u0010HJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010J\u001a\u00020IH&\u00a2\u0006\u0004\u0008\u0005\u0010KJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010M\u001a\u00020LH&\u00a2\u0006\u0004\u0008\u0005\u0010NJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010P\u001a\u00020OH&\u00a2\u0006\u0004\u0008\u0005\u0010QJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010S\u001a\u00020RH&\u00a2\u0006\u0004\u0008\u0005\u0010TJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010V\u001a\u00020UH&\u00a2\u0006\u0004\u0008\u0005\u0010WJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010Y\u001a\u00020XH&\u00a2\u0006\u0004\u0008\u0005\u0010ZJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\\\u001a\u00020[H&\u00a2\u0006\u0004\u0008\u0005\u0010]J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010_\u001a\u00020^H&\u00a2\u0006\u0004\u0008\u0005\u0010`J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010b\u001a\u00020aH&\u00a2\u0006\u0004\u0008\u0005\u0010cJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010e\u001a\u00020dH&\u00a2\u0006\u0004\u0008\u0005\u0010fJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010h\u001a\u00020gH&\u00a2\u0006\u0004\u0008\u0005\u0010iJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010k\u001a\u00020jH&\u00a2\u0006\u0004\u0008\u0005\u0010lJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010n\u001a\u00020mH&\u00a2\u0006\u0004\u0008\u0005\u0010oJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010q\u001a\u00020pH&\u00a2\u0006\u0004\u0008\u0005\u0010rJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010t\u001a\u00020sH&\u00a2\u0006\u0004\u0008\u0005\u0010uJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010w\u001a\u00020vH&\u00a2\u0006\u0004\u0008\u0005\u0010xJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010z\u001a\u00020yH&\u00a2\u0006\u0004\u0008\u0005\u0010{J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010}\u001a\u00020|H&\u00a2\u0006\u0004\u0008\u0005\u0010~J\u0019\u0010\u0005\u001a\u00020\u00042\u0007\u0010\u0080\u0001\u001a\u00020\u007fH&\u00a2\u0006\u0005\u0008\u0005\u0010\u0081\u0001J\u001a\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0083\u0001\u001a\u00030\u0082\u0001H&\u00a2\u0006\u0005\u0008\u0005\u0010\u0084\u0001\u00a8\u0006\u0085\u0001"
    }
    d2 = {
        "Lio/didomi/sdk/J0;",
        "",
        "Lio/didomi/sdk/Didomi;",
        "didomi",
        "",
        "a",
        "(Lio/didomi/sdk/Didomi;)V",
        "Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;",
        "tvPreferencesDialogActivity",
        "(Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;)V",
        "Lio/didomi/sdk/O;",
        "consentNoticeBottomFragment",
        "(Lio/didomi/sdk/O;)V",
        "Lio/didomi/sdk/S;",
        "consentNoticePopupFragment",
        "(Lio/didomi/sdk/S;)V",
        "Lio/didomi/sdk/notice/ctv/a;",
        "tvConsentNoticeFragment",
        "(Lio/didomi/sdk/notice/ctv/a;)V",
        "Lio/didomi/sdk/q6;",
        "tvNoticePrivacyFragment",
        "(Lio/didomi/sdk/q6;)V",
        "Lio/didomi/sdk/c;",
        "additionalDataProcessingDetailFragment",
        "(Lio/didomi/sdk/c;)V",
        "Lio/didomi/sdk/y5;",
        "sdkStorageDisclosureFragment",
        "(Lio/didomi/sdk/y5;)V",
        "Lio/didomi/sdk/q4;",
        "purposeCategoryFragment",
        "(Lio/didomi/sdk/q4;)V",
        "Lio/didomi/sdk/u4;",
        "purposeDetailFragment",
        "(Lio/didomi/sdk/u4;)V",
        "Lio/didomi/sdk/P4;",
        "purposeVendorsFragment",
        "(Lio/didomi/sdk/P4;)V",
        "Lio/didomi/sdk/V4;",
        "purposesFragment",
        "(Lio/didomi/sdk/V4;)V",
        "Lio/didomi/sdk/L5;",
        "spiFragment",
        "(Lio/didomi/sdk/L5;)V",
        "Lio/didomi/sdk/H5;",
        "spiCategoryFragment",
        "(Lio/didomi/sdk/H5;)V",
        "Lio/didomi/sdk/h6;",
        "tvAdditionalDataProcessingDetailFragment",
        "(Lio/didomi/sdk/h6;)V",
        "Lio/didomi/sdk/y6;",
        "tvPurposeAdditionalInfoFragment",
        "(Lio/didomi/sdk/y6;)V",
        "Lio/didomi/sdk/T6;",
        "tvPurposeVendorsFragment",
        "(Lio/didomi/sdk/T6;)V",
        "Lio/didomi/sdk/E6;",
        "tvPurposeDetailFragment",
        "(Lio/didomi/sdk/E6;)V",
        "Lio/didomi/sdk/B6;",
        "tvPurposeCategoryFragment",
        "(Lio/didomi/sdk/B6;)V",
        "Lio/didomi/sdk/j7;",
        "tvPurposesFragment",
        "(Lio/didomi/sdk/j7;)V",
        "Lio/didomi/sdk/o7;",
        "tvSdkStorageDisclosureFragment",
        "(Lio/didomi/sdk/o7;)V",
        "Lio/didomi/sdk/w0;",
        "deviceStorageDisclosureFragment",
        "(Lio/didomi/sdk/w0;)V",
        "Lio/didomi/sdk/E5;",
        "selectedDisclosureContentFragment",
        "(Lio/didomi/sdk/E5;)V",
        "Lio/didomi/sdk/I8;",
        "userInfoFragment",
        "(Lio/didomi/sdk/I8;)V",
        "Lio/didomi/sdk/R8;",
        "vendorDetailFragment",
        "(Lio/didomi/sdk/R8;)V",
        "Lio/didomi/sdk/a9;",
        "vendorFragment",
        "(Lio/didomi/sdk/a9;)V",
        "Lio/didomi/sdk/t7;",
        "tvVendorAdditionalDataFragment",
        "(Lio/didomi/sdk/t7;)V",
        "Lio/didomi/sdk/x7;",
        "tvVendorAdditionalInfoFragment",
        "(Lio/didomi/sdk/x7;)V",
        "Lio/didomi/sdk/E7;",
        "tvVendorConsentDataFragment",
        "(Lio/didomi/sdk/E7;)V",
        "Lio/didomi/sdk/T7;",
        "tvVendorDetailFragment",
        "(Lio/didomi/sdk/T7;)V",
        "Lio/didomi/sdk/F7;",
        "tvVendorDataCategoryFragment",
        "(Lio/didomi/sdk/F7;)V",
        "Lio/didomi/sdk/Z7;",
        "tvVendorDisclosuresDetailFragment",
        "(Lio/didomi/sdk/Z7;)V",
        "Lio/didomi/sdk/b8;",
        "tvVendorEssentialDataFragment",
        "(Lio/didomi/sdk/b8;)V",
        "Lio/didomi/sdk/e8;",
        "tvVendorIabFragment",
        "(Lio/didomi/sdk/e8;)V",
        "Lio/didomi/sdk/i8;",
        "tvVendorLegIntClaimFragment",
        "(Lio/didomi/sdk/i8;)V",
        "Lio/didomi/sdk/k8;",
        "tvVendorLegIntDataFragment",
        "(Lio/didomi/sdk/k8;)V",
        "Lio/didomi/sdk/n8;",
        "tvVendorPrivacyFragment",
        "(Lio/didomi/sdk/n8;)V",
        "Lio/didomi/sdk/r8;",
        "tvVendorsFragment",
        "(Lio/didomi/sdk/r8;)V",
        "Lio/didomi/sdk/t0;",
        "dataProcessingView",
        "(Lio/didomi/sdk/t0;)V",
        "Lio/didomi/sdk/view/mobile/DidomiToggle;",
        "didomiToggle",
        "(Lio/didomi/sdk/view/mobile/DidomiToggle;)V",
        "Lio/didomi/sdk/view/mobile/HeaderView;",
        "headerView",
        "(Lio/didomi/sdk/view/mobile/HeaderView;)V",
        "Lio/didomi/sdk/purpose/mobile/PurposeSaveView;",
        "purposeSaveView",
        "(Lio/didomi/sdk/purpose/mobile/PurposeSaveView;)V",
        "Lio/didomi/sdk/A5;",
        "sdkStorageDisclosureView",
        "(Lio/didomi/sdk/A5;)V",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# virtual methods
.method public abstract a(Lio/didomi/sdk/A5;)V
.end method

.method public abstract a(Lio/didomi/sdk/B6;)V
.end method

.method public abstract a(Lio/didomi/sdk/Didomi;)V
.end method

.method public abstract a(Lio/didomi/sdk/E5;)V
.end method

.method public abstract a(Lio/didomi/sdk/E6;)V
.end method

.method public abstract a(Lio/didomi/sdk/E7;)V
.end method

.method public abstract a(Lio/didomi/sdk/F7;)V
.end method

.method public abstract a(Lio/didomi/sdk/H5;)V
.end method

.method public abstract a(Lio/didomi/sdk/I8;)V
.end method

.method public abstract a(Lio/didomi/sdk/L5;)V
.end method

.method public abstract a(Lio/didomi/sdk/O;)V
.end method

.method public abstract a(Lio/didomi/sdk/P4;)V
.end method

.method public abstract a(Lio/didomi/sdk/R8;)V
.end method

.method public abstract a(Lio/didomi/sdk/S;)V
.end method

.method public abstract a(Lio/didomi/sdk/T6;)V
.end method

.method public abstract a(Lio/didomi/sdk/T7;)V
.end method

.method public abstract a(Lio/didomi/sdk/V4;)V
.end method

.method public abstract a(Lio/didomi/sdk/Z7;)V
.end method

.method public abstract a(Lio/didomi/sdk/a9;)V
.end method

.method public abstract a(Lio/didomi/sdk/b8;)V
.end method

.method public abstract a(Lio/didomi/sdk/c;)V
.end method

.method public abstract a(Lio/didomi/sdk/e8;)V
.end method

.method public abstract a(Lio/didomi/sdk/h6;)V
.end method

.method public abstract a(Lio/didomi/sdk/i8;)V
.end method

.method public abstract a(Lio/didomi/sdk/j7;)V
.end method

.method public abstract a(Lio/didomi/sdk/k8;)V
.end method

.method public abstract a(Lio/didomi/sdk/n8;)V
.end method

.method public abstract a(Lio/didomi/sdk/notice/ctv/a;)V
.end method

.method public abstract a(Lio/didomi/sdk/o7;)V
.end method

.method public abstract a(Lio/didomi/sdk/preferences/ctv/TVPreferencesDialogActivity;)V
.end method

.method public abstract a(Lio/didomi/sdk/purpose/mobile/PurposeSaveView;)V
.end method

.method public abstract a(Lio/didomi/sdk/q4;)V
.end method

.method public abstract a(Lio/didomi/sdk/q6;)V
.end method

.method public abstract a(Lio/didomi/sdk/r8;)V
.end method

.method public abstract a(Lio/didomi/sdk/t0;)V
.end method

.method public abstract a(Lio/didomi/sdk/t7;)V
.end method

.method public abstract a(Lio/didomi/sdk/u4;)V
.end method

.method public abstract a(Lio/didomi/sdk/view/mobile/DidomiToggle;)V
.end method

.method public abstract a(Lio/didomi/sdk/view/mobile/HeaderView;)V
.end method

.method public abstract a(Lio/didomi/sdk/w0;)V
.end method

.method public abstract a(Lio/didomi/sdk/x7;)V
.end method

.method public abstract a(Lio/didomi/sdk/y5;)V
.end method

.method public abstract a(Lio/didomi/sdk/y6;)V
.end method
