###### Class io.didomi.drawable.C1905t8 (io.didomi.sdk.t8)
.class public final Lio/didomi/sdk/t8;
.super Lio/didomi/sdk/h9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/didomi/sdk/t8$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00d0\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u001a\n\u0002\u0018\u0002\n\u0002\u0008.\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001BQ\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0015\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0016H\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0015\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0016H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u0019J\u0015\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0016H\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u0019J\u0015\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0016H\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u0019J\u0019\u0010 \u001a\u00020\u001f*\u0008\u0012\u0004\u0012\u00020\u001e0\u001dH\u0002\u00a2\u0006\u0004\u0008 \u0010!J\u001f\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0016*\u0008\u0012\u0004\u0012\u00020\"0\u001dH\u0002\u00a2\u0006\u0004\u0008#\u0010$J\u0015\u0010(\u001a\u00020\'2\u0006\u0010&\u001a\u00020%\u00a2\u0006\u0004\u0008(\u0010)J\r\u0010+\u001a\u00020*\u00a2\u0006\u0004\u0008+\u0010,J\u0015\u0010 \u001a\u00020*2\u0006\u0010.\u001a\u00020-\u00a2\u0006\u0004\u0008 \u0010/J\u0015\u00100\u001a\u00020*2\u0006\u0010.\u001a\u00020-\u00a2\u0006\u0004\u00080\u0010/J\u0015\u00101\u001a\u00020*2\u0006\u0010.\u001a\u00020-\u00a2\u0006\u0004\u00081\u0010/J\u0015\u00102\u001a\u00020-2\u0006\u0010&\u001a\u00020%\u00a2\u0006\u0004\u00082\u00103J\u000f\u00104\u001a\u0004\u0018\u00010\u001f\u00a2\u0006\u0004\u00084\u00105J\u000f\u00106\u001a\u0004\u0018\u00010\u001f\u00a2\u0006\u0004\u00086\u00105J\u000f\u00107\u001a\u0004\u0018\u00010\u001f\u00a2\u0006\u0004\u00087\u00105J\u000f\u00108\u001a\u0004\u0018\u00010\u001f\u00a2\u0006\u0004\u00088\u00105J\u001b\u0010#\u001a\u0008\u0012\u0004\u0012\u00020;0\u00162\u0006\u0010:\u001a\u000209\u00a2\u0006\u0004\u0008#\u0010<J\u0017\u00100\u001a\u00020=2\u0006\u0010:\u001a\u000209H\u0000\u00a2\u0006\u0004\u00080\u0010>J\u001d\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u00170\u00162\u0006\u0010:\u001a\u000209H\u0000\u00a2\u0006\u0004\u0008 \u0010<J\r\u0010?\u001a\u00020=\u00a2\u0006\u0004\u0008?\u0010@J\u0017\u00100\u001a\u0004\u0018\u00010C2\u0006\u0010B\u001a\u00020A\u00a2\u0006\u0004\u00080\u0010DJ\u0017\u0010 \u001a\u0004\u0018\u00010C2\u0006\u0010B\u001a\u00020A\u00a2\u0006\u0004\u0008 \u0010DJ\u0017\u0010#\u001a\u0004\u0018\u00010C2\u0006\u0010B\u001a\u00020A\u00a2\u0006\u0004\u0008#\u0010DJ\r\u0010E\u001a\u00020*\u00a2\u0006\u0004\u0008E\u0010,J\u0017\u0010F\u001a\u00020-2\u0006\u0010&\u001a\u00020%H\u0000\u00a2\u0006\u0004\u0008F\u00103J\u0017\u0010G\u001a\u00020-2\u0006\u0010&\u001a\u00020%H\u0000\u00a2\u0006\u0004\u0008G\u00103J\u0015\u00100\u001a\u00020*2\u0006\u0010H\u001a\u00020=\u00a2\u0006\u0004\u00080\u0010IR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008J\u0010KR\u0014\u0010\t\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008L\u0010MR\u0014\u0010\r\u001a\u00020\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008N\u0010OR\u0014\u0010\u000f\u001a\u00020\u000e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008P\u0010QR\u0014\u0010\u0013\u001a\u00020\u00128\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008R\u0010SR\"\u0010Z\u001a\u00020A8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008T\u0010U\u001a\u0004\u0008V\u0010W\"\u0004\u0008X\u0010YR\"\u0010]\u001a\u00020A8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008[\u0010U\u001a\u0004\u0008\\\u0010W\"\u0004\u00081\u0010YR\u0018\u0010a\u001a\u0004\u0018\u00010^8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008_\u0010`R\u001b\u0010f\u001a\u00020-8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008b\u0010c\u001a\u0004\u0008d\u0010eR\u0014\u0010h\u001a\u00020=8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008g\u0010@R\u0011\u0010j\u001a\u00020=8F\u00a2\u0006\u0006\u001a\u0004\u0008i\u0010@R\u0011\u0010l\u001a\u00020=8F\u00a2\u0006\u0006\u001a\u0004\u0008k\u0010@R\u0011\u0010n\u001a\u00020=8F\u00a2\u0006\u0006\u001a\u0004\u0008m\u0010@R\u0011\u0010p\u001a\u00020=8F\u00a2\u0006\u0006\u001a\u0004\u0008o\u0010@R\u0011\u0010r\u001a\u00020=8F\u00a2\u0006\u0006\u001a\u0004\u0008q\u0010@R\u0011\u0010t\u001a\u00020=8F\u00a2\u0006\u0006\u001a\u0004\u0008s\u0010@R\u0011\u0010v\u001a\u00020=8F\u00a2\u0006\u0006\u001a\u0004\u0008u\u0010@R\u0011\u0010x\u001a\u00020=8F\u00a2\u0006\u0006\u001a\u0004\u0008w\u0010@R\u0011\u0010z\u001a\u00020=8F\u00a2\u0006\u0006\u001a\u0004\u0008y\u0010@R\u0011\u0010|\u001a\u00020=8F\u00a2\u0006\u0006\u001a\u0004\u0008{\u0010@R\u0011\u0010~\u001a\u00020=8F\u00a2\u0006\u0006\u001a\u0004\u0008}\u0010@R\u0012\u0010\u0080\u0001\u001a\u00020=8F\u00a2\u0006\u0006\u001a\u0004\u0008\u007f\u0010@R\u0013\u0010\u0082\u0001\u001a\u00020=8F\u00a2\u0006\u0007\u001a\u0005\u0008\u0081\u0001\u0010@R\u0013\u0010\u0084\u0001\u001a\u00020=8F\u00a2\u0006\u0007\u001a\u0005\u0008\u0083\u0001\u0010@R\u0013\u0010\u0086\u0001\u001a\u00020=8F\u00a2\u0006\u0007\u001a\u0005\u0008\u0085\u0001\u0010@R\u0013\u0010\u0088\u0001\u001a\u00020=8F\u00a2\u0006\u0007\u001a\u0005\u0008\u0087\u0001\u0010@R\u0013\u0010\u008a\u0001\u001a\u00020=8F\u00a2\u0006\u0007\u001a\u0005\u0008\u0089\u0001\u0010@R\u0013\u0010\u008c\u0001\u001a\u00020=8F\u00a2\u0006\u0007\u001a\u0005\u0008\u008b\u0001\u0010@R\u001b\u0010\u0090\u0001\u001a\n\u0012\u0005\u0012\u00030\u008e\u00010\u008d\u00018F\u00a2\u0006\u0007\u001a\u0005\u0008\u008f\u0001\u0010\u0019R\u0015\u0010\u0094\u0001\u001a\u00030\u0091\u00018F\u00a2\u0006\u0008\u001a\u0006\u0008\u0092\u0001\u0010\u0093\u0001R\u0019\u0010\u0096\u0001\u001a\u0008\u0012\u0004\u0012\u00020\'0\u00168F\u00a2\u0006\u0007\u001a\u0005\u0008\u0095\u0001\u0010\u0019R\u0015\u0010\u0098\u0001\u001a\u0004\u0018\u00010=8F\u00a2\u0006\u0007\u001a\u0005\u0008\u0097\u0001\u0010@R\u0013\u0010\u009a\u0001\u001a\u00020-8F\u00a2\u0006\u0007\u001a\u0005\u0008\u0099\u0001\u0010eR\u001b\u0010\u009d\u0001\u001a\n\u0012\u0005\u0012\u00030\u009b\u00010\u008d\u00018F\u00a2\u0006\u0007\u001a\u0005\u0008\u009c\u0001\u0010\u0019R\u0013\u0010\u009f\u0001\u001a\u00020=8F\u00a2\u0006\u0007\u001a\u0005\u0008\u009e\u0001\u0010@R\u0013\u0010\u00a1\u0001\u001a\u00020=8F\u00a2\u0006\u0007\u001a\u0005\u0008\u00a0\u0001\u0010@R\u0016\u0010\u00a3\u0001\u001a\u00020=8@X\u0080\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00a2\u0001\u0010@R\u0015\u0010\u00a7\u0001\u001a\u00030\u00a4\u00018F\u00a2\u0006\u0008\u001a\u0006\u0008\u00a5\u0001\u0010\u00a6\u0001\u00a8\u0006\u00a8\u0001"
    }
    d2 = {
        "Lio/didomi/sdk/t8;",
        "Lio/didomi/sdk/h9;",
        "Lio/didomi/sdk/apiEvents/b;",
        "apiEventsRepository",
        "Lio/didomi/sdk/H;",
        "configurationRepository",
        "Lio/didomi/sdk/M2;",
        "eventsRepository",
        "Lio/didomi/sdk/v3;",
        "languagesHelper",
        "Lio/didomi/sdk/z8;",
        "themeProvider",
        "Lio/didomi/sdk/G8;",
        "userChoicesInfoProvider",
        "Lio/didomi/sdk/V8;",
        "vendorRepository",
        "Lio/didomi/sdk/C3;",
        "logoProvider",
        "Lio/didomi/sdk/s5;",
        "resourcesHelper",
        "<init>",
        "(Lio/didomi/sdk/apiEvents/b;Lio/didomi/sdk/H;Lio/didomi/sdk/M2;Lio/didomi/sdk/v3;Lio/didomi/sdk/z8;Lio/didomi/sdk/G8;Lio/didomi/sdk/V8;Lio/didomi/sdk/C3;Lio/didomi/sdk/s5;)V",
        "",
        "Lio/didomi/sdk/A7$a;",
        "m0",
        "()Ljava/util/List;",
        "o0",
        "l0",
        "n0",
        "",
        "Lio/didomi/sdk/r0;",
        "Landroid/text/SpannedString;",
        "b",
        "(Ljava/util/Collection;)Landroid/text/SpannedString;",
        "Lio/didomi/sdk/o0;",
        "a",
        "(Ljava/util/Collection;)Ljava/util/List;",
        "Lio/didomi/sdk/models/InternalVendor;",
        "vendor",
        "Lio/didomi/sdk/g8$g;",
        "M",
        "(Lio/didomi/sdk/models/InternalVendor;)Lio/didomi/sdk/g8$g;",
        "",
        "T0",
        "()V",
        "",
        "isChecked",
        "(Z)V",
        "c",
        "d",
        "N",
        "(Lio/didomi/sdk/models/InternalVendor;)Z",
        "f0",
        "()Landroid/text/SpannedString;",
        "e0",
        "h0",
        "k0",
        "Lio/didomi/sdk/vendors/ctv/model/TVDataProcessingLegalType;",
        "legalType",
        "Lio/didomi/sdk/A7;",
        "(Lio/didomi/sdk/vendors/ctv/model/TVDataProcessingLegalType;)Ljava/util/List;",
        "",
        "(Lio/didomi/sdk/vendors/ctv/model/TVDataProcessingLegalType;)Ljava/lang/String;",
        "H0",
        "()Ljava/lang/String;",
        "",
        "size",
        "Landroid/graphics/Bitmap;",
        "(I)Landroid/graphics/Bitmap;",
        "U0",
        "O",
        "P",
        "id",
        "(Ljava/lang/String;)V",
        "u",
        "Lio/didomi/sdk/H;",
        "v",
        "Lio/didomi/sdk/v3;",
        "w",
        "Lio/didomi/sdk/G8;",
        "x",
        "Lio/didomi/sdk/V8;",
        "y",
        "Lio/didomi/sdk/s5;",
        "z",
        "I",
        "i0",
        "()I",
        "e",
        "(I)V",
        "focusedPosition",
        "A",
        "g0",
        "detailFocusedPosition",
        "Lio/didomi/sdk/models/DataCategory;",
        "B",
        "Lio/didomi/sdk/models/DataCategory;",
        "selectedDataCategory",
        "C",
        "Lkotlin/Lazy;",
        "y0",
        "()Z",
        "shouldHideReadMoreButtonFromVendorData",
        "q0",
        "quickActionTextLabel",
        "S0",
        "vendorsTitleLabel",
        "r0",
        "quickActionTitleLabel",
        "x0",
        "settingsTitleLabel",
        "D0",
        "vendorConsentOnLabel",
        "C0",
        "vendorConsentOffLabel",
        "N0",
        "vendorOnLabel",
        "M0",
        "vendorOffLabel",
        "R0",
        "vendorsSectionTitleLabel",
        "F0",
        "vendorIabTitleLabel",
        "K0",
        "vendorLegIntOnLabel",
        "J0",
        "vendorLegIntOffLabel",
        "I0",
        "vendorLegIntLabel",
        "Q0",
        "vendorReadMoreLabel",
        "B0",
        "vendorConsentLabel",
        "P0",
        "vendorPrivacyPolicyTitle",
        "E0",
        "vendorIabDescriptionText",
        "O0",
        "vendorPrivacyDescriptionText",
        "G0",
        "vendorLegIntClaimDescriptionText",
        "",
        "Lio/didomi/sdk/g8;",
        "L0",
        "vendorList",
        "Lio/didomi/sdk/g8$a;",
        "A0",
        "()Lio/didomi/sdk/g8$a;",
        "vendorBulk",
        "z0",
        "tvVendorItemList",
        "w0",
        "selectedVendorName",
        "v0",
        "selectedVendorHasIABDisclaimer",
        "Lio/didomi/sdk/V7;",
        "u0",
        "selectedVendorDetail",
        "t0",
        "selectedDataCategoryName",
        "s0",
        "selectedDataCategoryDescription",
        "j0",
        "itemDescriptionLabel",
        "Ljava/util/Locale;",
        "p0",
        "()Ljava/util/Locale;",
        "locale",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private A:I

.field private B:Lio/didomi/sdk/models/DataCategory;

.field private final C:Lkotlin/i;

.field private final u:Lio/didomi/sdk/H;

.field private final v:Lio/didomi/sdk/v3;

.field private final w:Lio/didomi/sdk/G8;

.field private final x:Lio/didomi/sdk/V8;

.field private final y:Lio/didomi/sdk/s5;

.field private z:I


# direct methods
.method public constructor <init>(Lio/didomi/sdk/apiEvents/b;Lio/didomi/sdk/H;Lio/didomi/sdk/M2;Lio/didomi/sdk/v3;Lio/didomi/sdk/z8;Lio/didomi/sdk/G8;Lio/didomi/sdk/V8;Lio/didomi/sdk/C3;Lio/didomi/sdk/s5;)V
    .registers 11

    const-string v0, "apiEventsRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configurationRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventsRepository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "languagesHelper"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "themeProvider"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userChoicesInfoProvider"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vendorRepository"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logoProvider"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourcesHelper"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p8}, Lio/didomi/sdk/h9;-><init>(Lio/didomi/sdk/apiEvents/b;Lio/didomi/sdk/H;Lio/didomi/sdk/M2;Lio/didomi/sdk/v3;Lio/didomi/sdk/z8;Lio/didomi/sdk/G8;Lio/didomi/sdk/V8;Lio/didomi/sdk/C3;)V

    iput-object p2, p0, Lio/didomi/sdk/t8;->u:Lio/didomi/sdk/H;

    iput-object p4, p0, Lio/didomi/sdk/t8;->v:Lio/didomi/sdk/v3;

    iput-object p6, p0, Lio/didomi/sdk/t8;->w:Lio/didomi/sdk/G8;

    iput-object p7, p0, Lio/didomi/sdk/t8;->x:Lio/didomi/sdk/V8;

    iput-object p9, p0, Lio/didomi/sdk/t8;->y:Lio/didomi/sdk/s5;

    new-instance p1, Lio/didomi/sdk/t8$d;

    invoke-direct {p1, p0}, Lio/didomi/sdk/t8$d;-><init>(Lio/didomi/sdk/t8;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/t8;->C:Lkotlin/i;

    return-void
.end method

.method public static final synthetic a(Lio/didomi/sdk/t8;)Lio/didomi/sdk/H;
    .registers 1

    iget-object p0, p0, Lio/didomi/sdk/t8;->u:Lio/didomi/sdk/H;

    return-object p0
.end method

.method private final a(Ljava/util/Collection;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lio/didomi/sdk/o0;",
            ">;)",
            "Ljava/util/List<",
            "Lio/didomi/sdk/A7$a;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/didomi/sdk/t8$b;

    invoke-direct {v0}, Lio/didomi/sdk/t8$b;-><init>()V

    invoke-static {p1, v0}, Lkotlin/collections/p;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/p;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/didomi/sdk/o0;

    new-instance v8, Lio/didomi/sdk/A7$a;

    invoke-interface {v1}, Lio/didomi/sdk/o0;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lio/didomi/sdk/o0;->getDescriptionLegal()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lio/didomi/sdk/A7$a;-><init>(Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/n;)V

    invoke-interface {v0, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_39
    return-object v0
.end method

.method private final b(Ljava/util/Collection;)Landroid/text/SpannedString;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lio/didomi/sdk/r0;",
            ">;)",
            "Landroid/text/SpannedString;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/t8;->v:Lio/didomi/sdk/v3;

    const-string v1, "retention_time"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v7, Lio/didomi/sdk/t8$c;

    invoke-direct {v7, p0, v0}, Lio/didomi/sdk/t8$c;-><init>(Lio/didomi/sdk/t8;Ljava/lang/String;)V

    const-string v2, "\n"

    const/4 v5, 0x0

    const/16 v8, 0x1e

    const/4 v9, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v9}, Lio/didomi/sdk/w;->a(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/b/l;ILjava/lang/Object;)Landroid/text/SpannedString;

    move-result-object p1

    return-object p1
.end method

.method public static final synthetic b(Lio/didomi/sdk/t8;)Lio/didomi/sdk/v3;
    .registers 1

    iget-object p0, p0, Lio/didomi/sdk/t8;->v:Lio/didomi/sdk/v3;

    return-object p0
.end method

.method public static final synthetic c(Lio/didomi/sdk/t8;)Lio/didomi/sdk/s5;
    .registers 1

    iget-object p0, p0, Lio/didomi/sdk/t8;->y:Lio/didomi/sdk/s5;

    return-object p0
.end method

.method private final l0()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/didomi/sdk/A7$a;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lio/didomi/sdk/h9;->J()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/models/InternalVendor;

    if-eqz v0, :cond_18

    iget-object v1, p0, Lio/didomi/sdk/t8;->x:Lio/didomi/sdk/V8;

    invoke-virtual {v1, v0}, Lio/didomi/sdk/V8;->c(Lio/didomi/sdk/models/InternalVendor;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/didomi/sdk/t8;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1c

    :cond_18
    invoke-static {}, Lkotlin/collections/p;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_1c
    return-object v0
.end method

.method private final m0()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/didomi/sdk/A7$a;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lio/didomi/sdk/h9;->J()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/models/InternalVendor;

    if-eqz v0, :cond_16

    invoke-virtual {p0, v0}, Lio/didomi/sdk/h9;->h(Lio/didomi/sdk/models/InternalVendor;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/didomi/sdk/t8;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1a

    :cond_16
    invoke-static {}, Lkotlin/collections/p;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_1a
    return-object v0
.end method

.method private final n0()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/didomi/sdk/A7$a;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lio/didomi/sdk/h9;->J()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/models/InternalVendor;

    if-eqz v0, :cond_18

    iget-object v1, p0, Lio/didomi/sdk/t8;->x:Lio/didomi/sdk/V8;

    invoke-virtual {v1, v0}, Lio/didomi/sdk/V8;->b(Lio/didomi/sdk/models/InternalVendor;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/didomi/sdk/t8;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1c

    :cond_18
    invoke-static {}, Lkotlin/collections/p;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_1c
    return-object v0
.end method

.method private final o0()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/didomi/sdk/A7$a;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lio/didomi/sdk/h9;->J()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/models/InternalVendor;

    if-eqz v0, :cond_16

    invoke-virtual {p0, v0}, Lio/didomi/sdk/h9;->n(Lio/didomi/sdk/models/InternalVendor;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/didomi/sdk/t8;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1a

    :cond_16
    invoke-static {}, Lkotlin/collections/p;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_1a
    return-object v0
.end method

.method private final q0()Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lio/didomi/sdk/t8;->v:Lio/didomi/sdk/v3;

    iget-object v1, p0, Lio/didomi/sdk/t8;->u:Lio/didomi/sdk/H;

    invoke-virtual {v1}, Lio/didomi/sdk/H;->b()Lio/didomi/sdk/k;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/k;->f()Lio/didomi/sdk/k$g;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/k$g;->b()Lio/didomi/sdk/k$g$a;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/k$g$a;->c()Ljava/util/Map;

    move-result-object v1

    const-string v2, "bulk_action_on_vendors"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/util/Map;Ljava/lang/String;Lio/didomi/sdk/W5;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final A0()Lio/didomi/sdk/g8$a;
    .registers 9

    invoke-virtual {p0}, Lio/didomi/sdk/h9;->b()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {p0}, Lio/didomi/sdk/t8;->N0()Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_b
    invoke-virtual {p0}, Lio/didomi/sdk/t8;->M0()Ljava/lang/String;

    move-result-object v0

    :goto_f
    move-object v2, v0

    new-instance v7, Lio/didomi/sdk/g8$a;

    invoke-direct {p0}, Lio/didomi/sdk/t8;->q0()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lio/didomi/sdk/g8$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZIILkotlin/jvm/internal/n;)V

    return-object v7
.end method

.method public final B0()Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lio/didomi/sdk/t8;->v:Lio/didomi/sdk/v3;

    const-string v1, "consent"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final C0()Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lio/didomi/sdk/t8;->v:Lio/didomi/sdk/v3;

    const-string v1, "consent_off"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final D0()Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lio/didomi/sdk/t8;->v:Lio/didomi/sdk/v3;

    const-string v1, "consent_on"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final E0()Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lio/didomi/sdk/t8;->v:Lio/didomi/sdk/v3;

    invoke-virtual {p0}, Lio/didomi/sdk/h9;->B()Ljava/lang/String;

    move-result-object v1

    const-string v2, "{url}"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/d0;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v3

    const-string v1, "external_link_description"

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final F0()Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lio/didomi/sdk/t8;->v:Lio/didomi/sdk/v3;

    const-string v1, "vendor_iab_transparency_button_title"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final G0()Ljava/lang/String;
    .registers 10

    invoke-virtual {p0}, Lio/didomi/sdk/h9;->J()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/models/InternalVendor;

    const-string v1, ""

    if-eqz v0, :cond_33

    invoke-virtual {p0, v0}, Lio/didomi/sdk/h9;->m(Lio/didomi/sdk/models/InternalVendor;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_31

    invoke-static {v0}, Lkotlin/text/g;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1b

    goto :goto_31

    :cond_1b
    iget-object v3, p0, Lio/didomi/sdk/t8;->v:Lio/didomi/sdk/v3;

    const-string v2, "{url}"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/d0;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v6

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    const-string v4, "external_link_description"

    invoke-static/range {v3 .. v8}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_34

    :cond_31
    :goto_31
    move-object v0, v1

    goto :goto_34

    :cond_33
    const/4 v0, 0x0

    :goto_34
    if-nez v0, :cond_37

    goto :goto_38

    :cond_37
    move-object v1, v0

    :goto_38
    return-object v1
.end method

.method public final H0()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/h9;->Y()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final I0()Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lio/didomi/sdk/t8;->v:Lio/didomi/sdk/v3;

    const-string v1, "object_to_legitimate_interest"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final J0()Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lio/didomi/sdk/t8;->v:Lio/didomi/sdk/v3;

    const-string v1, "object_to_legitimate_interest_status_off"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final K0()Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lio/didomi/sdk/t8;->v:Lio/didomi/sdk/v3;

    const-string v1, "object_to_legitimate_interest_status_on"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final L0()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/didomi/sdk/g8;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lio/didomi/sdk/g8$d;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lio/didomi/sdk/g8$d;-><init>(IILkotlin/jvm/internal/n;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lio/didomi/sdk/g8$f;

    invoke-virtual {p0}, Lio/didomi/sdk/t8;->S0()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-direct {v1, v5, v2, v6, v4}, Lio/didomi/sdk/g8$f;-><init>(Ljava/lang/String;IILkotlin/jvm/internal/n;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lio/didomi/sdk/h9;->x()Landroid/text/Spanned;

    move-result-object v1

    if-eqz v1, :cond_28

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_29

    :cond_28
    move-object v1, v4

    :goto_29
    if-nez v1, :cond_2d

    const-string v1, ""

    :cond_2d
    invoke-static {v1}, Lkotlin/text/g;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/2addr v5, v3

    if-eqz v5, :cond_3c

    new-instance v5, Lio/didomi/sdk/g8$b;

    invoke-direct {v5, v1, v2, v6, v4}, Lio/didomi/sdk/g8$b;-><init>(Ljava/lang/String;IILkotlin/jvm/internal/n;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3c
    invoke-virtual {p0}, Lio/didomi/sdk/h9;->P()Z

    move-result v1

    if-eqz v1, :cond_5a

    new-instance v1, Lio/didomi/sdk/g8$e;

    invoke-virtual {p0}, Lio/didomi/sdk/t8;->r0()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5, v2, v6, v4}, Lio/didomi/sdk/g8$e;-><init>(Ljava/lang/String;IILkotlin/jvm/internal/n;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0}, Lio/didomi/sdk/t8;->A0()Lio/didomi/sdk/g8$a;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6b

    :cond_5a
    invoke-virtual {p0}, Lio/didomi/sdk/t8;->z0()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_66

    const/4 v1, 0x0

    goto :goto_6b

    :cond_66
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v3

    :goto_6b
    new-instance v5, Lio/didomi/sdk/g8$e;

    invoke-virtual {p0}, Lio/didomi/sdk/t8;->R0()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7, v2, v6, v4}, Lio/didomi/sdk/g8$e;-><init>(Ljava/lang/String;IILkotlin/jvm/internal/n;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lio/didomi/sdk/t8;->z0()Ljava/util/List;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v5, Lio/didomi/sdk/g8$c;

    invoke-direct {v5, v2, v3, v4}, Lio/didomi/sdk/g8$c;-><init>(IILkotlin/jvm/internal/n;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v2, p0, Lio/didomi/sdk/t8;->z:I

    if-nez v2, :cond_8e

    if-ltz v1, :cond_8e

    iput v1, p0, Lio/didomi/sdk/t8;->z:I

    :cond_8e
    return-object v0
.end method

.method public final M(Lio/didomi/sdk/models/InternalVendor;)Lio/didomi/sdk/g8$g;
    .registers 13

    const-string v0, "vendor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/didomi/sdk/h9;->I(Lio/didomi/sdk/models/InternalVendor;)Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-virtual {p0, p1}, Lio/didomi/sdk/t8;->N(Lio/didomi/sdk/models/InternalVendor;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    const/4 v6, 0x1

    goto :goto_16

    :cond_14
    const/4 v0, 0x0

    const/4 v6, 0x0

    :goto_16
    new-instance v0, Lio/didomi/sdk/g8$g;

    invoke-virtual {p1}, Lio/didomi/sdk/models/InternalVendor;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v6, :cond_24

    invoke-virtual {p0}, Lio/didomi/sdk/t8;->D0()Ljava/lang/String;

    move-result-object v1

    :goto_22
    move-object v5, v1

    goto :goto_2e

    :cond_24
    if-eqz v3, :cond_2b

    invoke-virtual {p0}, Lio/didomi/sdk/t8;->C0()Ljava/lang/String;

    move-result-object v1

    goto :goto_22

    :cond_2b
    const-string v1, ""

    goto :goto_22

    :goto_2e
    invoke-virtual {p0, p1}, Lio/didomi/sdk/h9;->z(Lio/didomi/sdk/models/InternalVendor;)Z

    move-result v7

    const/4 v8, 0x0

    const/16 v9, 0x40

    const/4 v10, 0x0

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v10}, Lio/didomi/sdk/g8$g;-><init>(Lio/didomi/sdk/models/InternalVendor;ZLjava/lang/String;Ljava/lang/String;ZZIILkotlin/jvm/internal/n;)V

    return-object v0
.end method

.method public final M0()Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lio/didomi/sdk/t8;->v:Lio/didomi/sdk/v3;

    const-string v1, "purposes_off"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final N(Lio/didomi/sdk/models/InternalVendor;)Z
    .registers 3

    const-string v0, "vendor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/t8;->w:Lio/didomi/sdk/G8;

    invoke-virtual {v0}, Lio/didomi/sdk/G8;->g()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {p0, p1}, Lio/didomi/sdk/h9;->G(Lio/didomi/sdk/models/InternalVendor;)Z

    move-result v0

    if-nez v0, :cond_2a

    :cond_17
    iget-object v0, p0, Lio/didomi/sdk/t8;->w:Lio/didomi/sdk/G8;

    invoke-virtual {v0}, Lio/didomi/sdk/G8;->e()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {p0, p1}, Lio/didomi/sdk/h9;->H(Lio/didomi/sdk/models/InternalVendor;)Z

    move-result p1

    if-nez p1, :cond_2a

    goto :goto_2c

    :cond_2a
    const/4 p1, 0x0

    goto :goto_2d

    :cond_2c
    :goto_2c
    const/4 p1, 0x1

    :goto_2d
    return p1
.end method

.method public final N0()Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lio/didomi/sdk/t8;->v:Lio/didomi/sdk/v3;

    const-string v1, "purposes_on"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final O(Lio/didomi/sdk/models/InternalVendor;)Z
    .registers 3

    const-string v0, "vendor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/t8;->x:Lio/didomi/sdk/V8;

    invoke-virtual {v0, p1}, Lio/didomi/sdk/V8;->c(Lio/didomi/sdk/models/InternalVendor;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final O0()Ljava/lang/String;
    .registers 10

    invoke-virtual {p0}, Lio/didomi/sdk/h9;->J()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/models/InternalVendor;

    const-string v1, ""

    if-eqz v0, :cond_33

    invoke-virtual {p0, v0}, Lio/didomi/sdk/h9;->r(Lio/didomi/sdk/models/InternalVendor;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_31

    invoke-static {v0}, Lkotlin/text/g;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1b

    goto :goto_31

    :cond_1b
    iget-object v3, p0, Lio/didomi/sdk/t8;->v:Lio/didomi/sdk/v3;

    const-string v2, "{url}"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/d0;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v6

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    const-string v4, "external_link_description"

    invoke-static/range {v3 .. v8}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_34

    :cond_31
    :goto_31
    move-object v0, v1

    goto :goto_34

    :cond_33
    const/4 v0, 0x0

    :goto_34
    if-nez v0, :cond_37

    goto :goto_38

    :cond_37
    move-object v1, v0

    :goto_38
    return-object v1
.end method

.method public final P(Lio/didomi/sdk/models/InternalVendor;)Z
    .registers 3

    const-string v0, "vendor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/didomi/sdk/models/InternalVendor;->getEssentialPurposeIds()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final P0()Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lio/didomi/sdk/t8;->v:Lio/didomi/sdk/v3;

    sget-object v2, Lio/didomi/sdk/W5;->b:Lio/didomi/sdk/W5;

    const-string v1, "vendor_privacy_policy_screen_title"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final Q0()Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lio/didomi/sdk/t8;->v:Lio/didomi/sdk/v3;

    const-string v1, "read_more"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final R0()Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lio/didomi/sdk/t8;->v:Lio/didomi/sdk/v3;

    sget-object v2, Lio/didomi/sdk/W5;->b:Lio/didomi/sdk/W5;

    const-string v1, "our_partners_title"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final S0()Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lio/didomi/sdk/t8;->v:Lio/didomi/sdk/v3;

    iget-object v1, p0, Lio/didomi/sdk/t8;->u:Lio/didomi/sdk/H;

    invoke-virtual {v1}, Lio/didomi/sdk/H;->b()Lio/didomi/sdk/k;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/k;->f()Lio/didomi/sdk/k$g;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/k$g;->b()Lio/didomi/sdk/k$g$a;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/k$g$a;->e()Ljava/util/Map;

    move-result-object v1

    const-string v2, "our_partners_title"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/util/Map;Ljava/lang/String;Lio/didomi/sdk/W5;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final T0()V
    .registers 2

    new-instance v0, Lio/didomi/sdk/events/PreferencesClickViewVendorsEvent;

    invoke-direct {v0}, Lio/didomi/sdk/events/PreferencesClickViewVendorsEvent;-><init>()V

    invoke-virtual {p0, v0}, Lio/didomi/sdk/h9;->a(Lio/didomi/sdk/events/Event;)V

    return-void
.end method

.method public final U0()V
    .registers 3

    invoke-virtual {p0}, Lio/didomi/sdk/h9;->J()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(I)Landroid/graphics/Bitmap;
    .registers 4

    sget-object v0, Lio/didomi/sdk/c5;->a:Lio/didomi/sdk/c5;

    invoke-virtual {p0}, Lio/didomi/sdk/h9;->B()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lio/didomi/sdk/c5;->a(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lio/didomi/sdk/vendors/ctv/model/TVDataProcessingLegalType;)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/vendors/ctv/model/TVDataProcessingLegalType;",
            ")",
            "Ljava/util/List<",
            "Lio/didomi/sdk/A7;",
            ">;"
        }
    .end annotation

    const-string v0, "legalType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lio/didomi/sdk/A7$c;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lio/didomi/sdk/A7$c;-><init>(IILkotlin/jvm/internal/n;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lio/didomi/sdk/h9;->J()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/didomi/sdk/models/InternalVendor;

    if-eqz v1, :cond_26

    invoke-virtual {v1}, Lio/didomi/sdk/models/InternalVendor;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_27

    :cond_26
    move-object v1, v4

    :goto_27
    if-nez v1, :cond_2b

    const-string v1, ""

    :cond_2b
    move-object v6, v1

    invoke-virtual {p0}, Lio/didomi/sdk/t8;->v0()Z

    move-result v8

    invoke-virtual {p0, p1}, Lio/didomi/sdk/t8;->c(Lio/didomi/sdk/vendors/ctv/model/TVDataProcessingLegalType;)Ljava/lang/String;

    move-result-object v7

    new-instance v1, Lio/didomi/sdk/A7$d;

    const/4 v9, 0x0

    const/16 v10, 0x8

    const/4 v11, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v11}, Lio/didomi/sdk/A7$d;-><init>(Ljava/lang/String;Ljava/lang/String;ZIILkotlin/jvm/internal/n;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lio/didomi/sdk/t8;->b(Lio/didomi/sdk/vendors/ctv/model/TVDataProcessingLegalType;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance p1, Lio/didomi/sdk/A7$b;

    invoke-direct {p1, v2, v3, v4}, Lio/didomi/sdk/A7$b;-><init>(IILkotlin/jvm/internal/n;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lkotlin/collections/p;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final b(I)Landroid/graphics/Bitmap;
    .registers 4

    invoke-virtual {p0}, Lio/didomi/sdk/h9;->J()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/models/InternalVendor;

    if-eqz v0, :cond_1a

    invoke-virtual {p0, v0}, Lio/didomi/sdk/h9;->m(Lio/didomi/sdk/models/InternalVendor;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_13

    goto :goto_1a

    :cond_13
    sget-object v1, Lio/didomi/sdk/c5;->a:Lio/didomi/sdk/c5;

    invoke-virtual {v1, v0, p1}, Lio/didomi/sdk/c5;->a(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_1a
    :goto_1a
    const/4 p1, 0x0

    return-object p1
.end method

.method public final b(Lio/didomi/sdk/vendors/ctv/model/TVDataProcessingLegalType;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/vendors/ctv/model/TVDataProcessingLegalType;",
            ")",
            "Ljava/util/List<",
            "Lio/didomi/sdk/A7$a;",
            ">;"
        }
    .end annotation

    const-string v0, "legalType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lio/didomi/sdk/t8$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2e

    const/4 v0, 0x2

    if-eq p1, v0, :cond_29

    const/4 v0, 0x3

    if-eq p1, v0, :cond_24

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1e

    invoke-direct {p0}, Lio/didomi/sdk/t8;->n0()Ljava/util/List;

    move-result-object p1

    goto :goto_32

    :cond_1e
    new-instance p1, Lkotlin/k;

    invoke-direct {p1}, Lkotlin/k;-><init>()V

    throw p1

    :cond_24
    invoke-direct {p0}, Lio/didomi/sdk/t8;->l0()Ljava/util/List;

    move-result-object p1

    goto :goto_32

    :cond_29
    invoke-direct {p0}, Lio/didomi/sdk/t8;->o0()Ljava/util/List;

    move-result-object p1

    goto :goto_32

    :cond_2e
    invoke-direct {p0}, Lio/didomi/sdk/t8;->m0()Ljava/util/List;

    move-result-object p1

    :goto_32
    return-object p1
.end method

.method public final b(Z)V
    .registers 2

    if-eqz p1, :cond_5

    sget-object p1, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->d:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    goto :goto_7

    :cond_5
    sget-object p1, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->c:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    :goto_7
    invoke-virtual {p0, p1}, Lio/didomi/sdk/h9;->d(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V

    invoke-virtual {p0, p1}, Lio/didomi/sdk/h9;->a(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V

    return-void
.end method

.method public final c(I)Landroid/graphics/Bitmap;
    .registers 4

    invoke-virtual {p0}, Lio/didomi/sdk/h9;->J()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/models/InternalVendor;

    if-eqz v0, :cond_1a

    invoke-virtual {p0, v0}, Lio/didomi/sdk/h9;->r(Lio/didomi/sdk/models/InternalVendor;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_13

    goto :goto_1a

    :cond_13
    sget-object v1, Lio/didomi/sdk/c5;->a:Lio/didomi/sdk/c5;

    invoke-virtual {v1, v0, p1}, Lio/didomi/sdk/c5;->a(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_1a
    :goto_1a
    const/4 p1, 0x0

    return-object p1
.end method

.method public final c(Lio/didomi/sdk/vendors/ctv/model/TVDataProcessingLegalType;)Ljava/lang/String;
    .registers 4

    const-string v0, "legalType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lio/didomi/sdk/t8$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const-string v1, "toUpperCase(...)"

    if-eq p1, v0, :cond_57

    const/4 v0, 0x2

    if-eq p1, v0, :cond_45

    const/4 v0, 0x3

    if-eq p1, v0, :cond_33

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2d

    invoke-virtual {p0}, Lio/didomi/sdk/h9;->v()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lio/didomi/sdk/t8;->v:Lio/didomi/sdk/v3;

    invoke-virtual {v0}, Lio/didomi/sdk/v3;->g()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_68

    :cond_2d
    new-instance p1, Lkotlin/k;

    invoke-direct {p1}, Lkotlin/k;-><init>()V

    throw p1

    :cond_33
    invoke-virtual {p0}, Lio/didomi/sdk/h9;->i()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lio/didomi/sdk/t8;->v:Lio/didomi/sdk/v3;

    invoke-virtual {v0}, Lio/didomi/sdk/v3;->g()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_68

    :cond_45
    invoke-virtual {p0}, Lio/didomi/sdk/h9;->D()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lio/didomi/sdk/t8;->v:Lio/didomi/sdk/v3;

    invoke-virtual {v0}, Lio/didomi/sdk/v3;->g()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_68

    :cond_57
    invoke-virtual {p0}, Lio/didomi/sdk/h9;->r()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lio/didomi/sdk/t8;->v:Lio/didomi/sdk/v3;

    invoke-virtual {v0}, Lio/didomi/sdk/v3;->g()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_68
    return-object p1
.end method

.method public final c(Ljava/lang/String;)V
    .registers 3

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/t8;->x:Lio/didomi/sdk/V8;

    invoke-virtual {v0, p1}, Lio/didomi/sdk/V8;->a(Ljava/lang/String;)Lio/didomi/sdk/models/DataCategory;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/t8;->B:Lio/didomi/sdk/models/DataCategory;

    return-void
.end method

.method public final c(Z)V
    .registers 2

    if-eqz p1, :cond_8

    sget-object p1, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->d:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    invoke-virtual {p0, p1}, Lio/didomi/sdk/h9;->b(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V

    goto :goto_d

    :cond_8
    sget-object p1, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->c:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    invoke-virtual {p0, p1}, Lio/didomi/sdk/h9;->b(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V

    :goto_d
    invoke-virtual {p0}, Lio/didomi/sdk/h9;->c0()V

    return-void
.end method

.method public final d(I)V
    .registers 2

    iput p1, p0, Lio/didomi/sdk/t8;->A:I

    return-void
.end method

.method public final d(Z)V
    .registers 2

    if-eqz p1, :cond_8

    sget-object p1, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->c:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    invoke-virtual {p0, p1}, Lio/didomi/sdk/h9;->c(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V

    goto :goto_d

    :cond_8
    sget-object p1, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->d:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    invoke-virtual {p0, p1}, Lio/didomi/sdk/h9;->c(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V

    :goto_d
    invoke-virtual {p0}, Lio/didomi/sdk/h9;->c0()V

    return-void
.end method

.method public final e(I)V
    .registers 2

    iput p1, p0, Lio/didomi/sdk/t8;->z:I

    return-void
.end method

.method public final e0()Landroid/text/SpannedString;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/h9;->J()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/models/InternalVendor;

    if-eqz v0, :cond_1f

    invoke-virtual {p0, v0}, Lio/didomi/sdk/h9;->f(Lio/didomi/sdk/models/InternalVendor;)Lkotlin/Pair;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lkotlin/Pair;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1f

    invoke-direct {p0, v0}, Lio/didomi/sdk/t8;->b(Ljava/util/Collection;)Landroid/text/SpannedString;

    move-result-object v0

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    return-object v0
.end method

.method public final f0()Landroid/text/SpannedString;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/h9;->J()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/models/InternalVendor;

    if-eqz v0, :cond_1f

    invoke-virtual {p0, v0}, Lio/didomi/sdk/h9;->g(Lio/didomi/sdk/models/InternalVendor;)Lkotlin/Pair;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lkotlin/Pair;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1f

    invoke-direct {p0, v0}, Lio/didomi/sdk/t8;->b(Ljava/util/Collection;)Landroid/text/SpannedString;

    move-result-object v0

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    return-object v0
.end method

.method public final g0()I
    .registers 2

    iget v0, p0, Lio/didomi/sdk/t8;->A:I

    return v0
.end method

.method public final h0()Landroid/text/SpannedString;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/h9;->J()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/models/InternalVendor;

    if-eqz v0, :cond_1f

    invoke-virtual {p0, v0}, Lio/didomi/sdk/h9;->l(Lio/didomi/sdk/models/InternalVendor;)Lkotlin/Pair;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lkotlin/Pair;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1f

    invoke-direct {p0, v0}, Lio/didomi/sdk/t8;->b(Ljava/util/Collection;)Landroid/text/SpannedString;

    move-result-object v0

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    return-object v0
.end method

.method public final i0()I
    .registers 2

    iget v0, p0, Lio/didomi/sdk/t8;->z:I

    return v0
.end method

.method public final j0()Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lio/didomi/sdk/t8;->v:Lio/didomi/sdk/v3;

    sget-object v2, Lio/didomi/sdk/W5;->b:Lio/didomi/sdk/W5;

    const-string v1, "purpose_legal_description"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final k0()Landroid/text/SpannedString;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/h9;->J()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/models/InternalVendor;

    if-eqz v0, :cond_1f

    invoke-virtual {p0, v0}, Lio/didomi/sdk/h9;->o(Lio/didomi/sdk/models/InternalVendor;)Lkotlin/Pair;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lkotlin/Pair;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1f

    invoke-direct {p0, v0}, Lio/didomi/sdk/t8;->b(Ljava/util/Collection;)Landroid/text/SpannedString;

    move-result-object v0

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    return-object v0
.end method

.method public final p0()Ljava/util/Locale;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/t8;->v:Lio/didomi/sdk/v3;

    invoke-virtual {v0}, Lio/didomi/sdk/v3;->g()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public final r0()Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lio/didomi/sdk/t8;->v:Lio/didomi/sdk/v3;

    sget-object v2, Lio/didomi/sdk/W5;->b:Lio/didomi/sdk/W5;

    const-string v1, "bulk_action_section_title"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final s0()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/t8;->B:Lio/didomi/sdk/models/DataCategory;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lio/didomi/sdk/models/DataCategory;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    :cond_a
    const-string v0, ""

    :cond_c
    return-object v0
.end method

.method public final t0()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/t8;->B:Lio/didomi/sdk/models/DataCategory;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lio/didomi/sdk/models/DataCategory;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    :cond_a
    const-string v0, ""

    :cond_c
    return-object v0
.end method

.method public final u0()Ljava/util/List;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/didomi/sdk/V7;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/h9;->J()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/didomi/sdk/models/InternalVendor;

    if-eqz v1, :cond_1e2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Lio/didomi/sdk/V7$g;

    invoke-virtual {v1}, Lio/didomi/sdk/models/InternalVendor;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1}, Lio/didomi/sdk/h9;->p(Lio/didomi/sdk/models/InternalVendor;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/didomi/sdk/V5;->i(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1}, Lio/didomi/sdk/h9;->z(Lio/didomi/sdk/models/InternalVendor;)Z

    move-result v6

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lio/didomi/sdk/V7$g;-><init>(Ljava/lang/String;Ljava/lang/String;ZIILkotlin/jvm/internal/n;)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Lio/didomi/sdk/h9;->r(Lio/didomi/sdk/models/InternalVendor;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_60

    invoke-static {v3}, Lkotlin/text/g;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_42

    goto :goto_60

    :cond_42
    new-instance v3, Lio/didomi/sdk/V7$a;

    invoke-virtual {v0, v1}, Lio/didomi/sdk/h9;->x(Lio/didomi/sdk/models/InternalVendor;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lio/didomi/sdk/V7$a$a;->b:Lio/didomi/sdk/V7$a$a;

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Lio/didomi/sdk/V7$a;-><init>(Ljava/lang/CharSequence;Lio/didomi/sdk/V7$a$a;IILkotlin/jvm/internal/n;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v3, v0, Lio/didomi/sdk/t8;->A:I

    if-lez v3, :cond_59

    goto :goto_5e

    :cond_59
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v4

    :goto_5e
    iput v3, v0, Lio/didomi/sdk/t8;->A:I

    :cond_60
    :goto_60
    invoke-virtual {v0, v1}, Lio/didomi/sdk/h9;->m(Lio/didomi/sdk/models/InternalVendor;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8b

    invoke-static {v3}, Lkotlin/text/g;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6d

    goto :goto_8b

    :cond_6d
    new-instance v3, Lio/didomi/sdk/V7$a;

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/t8;->H0()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lio/didomi/sdk/V7$a$a;->c:Lio/didomi/sdk/V7$a$a;

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Lio/didomi/sdk/V7$a;-><init>(Ljava/lang/CharSequence;Lio/didomi/sdk/V7$a$a;IILkotlin/jvm/internal/n;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v3, v0, Lio/didomi/sdk/t8;->A:I

    if-lez v3, :cond_84

    goto :goto_89

    :cond_84
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v4

    :goto_89
    iput v3, v0, Lio/didomi/sdk/t8;->A:I

    :cond_8b
    :goto_8b
    invoke-virtual {v0, v1}, Lio/didomi/sdk/h9;->z(Lio/didomi/sdk/models/InternalVendor;)Z

    move-result v3

    if-eqz v3, :cond_af

    new-instance v3, Lio/didomi/sdk/V7$a;

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/t8;->F0()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lio/didomi/sdk/V7$a$a;->a:Lio/didomi/sdk/V7$a$a;

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Lio/didomi/sdk/V7$a;-><init>(Ljava/lang/CharSequence;Lio/didomi/sdk/V7$a$a;IILkotlin/jvm/internal/n;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v3, v0, Lio/didomi/sdk/t8;->A:I

    if-lez v3, :cond_a8

    goto :goto_ad

    :cond_a8
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v4

    :goto_ad
    iput v3, v0, Lio/didomi/sdk/t8;->A:I

    :cond_af
    iget-object v3, v0, Lio/didomi/sdk/t8;->x:Lio/didomi/sdk/V8;

    invoke-virtual {v3, v1}, Lio/didomi/sdk/V8;->a(Lio/didomi/sdk/models/InternalVendor;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    xor-int/2addr v5, v4

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v5, :cond_106

    new-instance v5, Lio/didomi/sdk/V7$j;

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/h9;->t()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9, v8, v6, v7}, Lio/didomi/sdk/V7$j;-><init>(Ljava/lang/String;IILkotlin/jvm/internal/n;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v3, v9}, Lkotlin/collections/p;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v5, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_da
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_106

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lio/didomi/sdk/models/DataCategory;

    new-instance v15, Lio/didomi/sdk/V7$d;

    invoke-virtual {v9}, Lio/didomi/sdk/models/DataCategory;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9}, Lio/didomi/sdk/models/DataCategory;->getId()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x4

    const/4 v9, 0x0

    move-object v10, v15

    move-object v4, v15

    move-object v15, v9

    invoke-direct/range {v10 .. v15}, Lio/didomi/sdk/V7$d;-><init>(Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/n;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    goto :goto_da

    :cond_106
    new-instance v3, Lio/didomi/sdk/V7$j;

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/t8;->x0()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v8, v6, v7}, Lio/didomi/sdk/V7$j;-><init>(Ljava/lang/String;IILkotlin/jvm/internal/n;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Lio/didomi/sdk/h9;->G(Lio/didomi/sdk/models/InternalVendor;)Z

    move-result v3

    if-eqz v3, :cond_152

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/h9;->L()Landroidx/lifecycle/MutableLiveData;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->d:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    if-ne v3, v4, :cond_127

    const/16 v17, 0x1

    goto :goto_129

    :cond_127
    const/16 v17, 0x0

    :goto_129
    new-instance v3, Lio/didomi/sdk/V7$b;

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/h9;->r()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/t8;->D0()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/t8;->C0()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x10

    const/16 v23, 0x0

    move-object/from16 v16, v3

    invoke-direct/range {v16 .. v23}, Lio/didomi/sdk/V7$b;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/n;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v3, v0, Lio/didomi/sdk/t8;->A:I

    if-lez v3, :cond_14a

    goto :goto_150

    :cond_14a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_150
    iput v3, v0, Lio/didomi/sdk/t8;->A:I

    :cond_152
    invoke-virtual {v0, v1}, Lio/didomi/sdk/h9;->H(Lio/didomi/sdk/models/InternalVendor;)Z

    move-result v3

    if-eqz v3, :cond_192

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/h9;->O()Landroidx/lifecycle/MutableLiveData;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->d:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    if-eq v3, v4, :cond_167

    const/16 v17, 0x1

    goto :goto_169

    :cond_167
    const/16 v17, 0x0

    :goto_169
    new-instance v3, Lio/didomi/sdk/V7$i;

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/h9;->D()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/t8;->K0()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/t8;->J0()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x10

    const/16 v23, 0x0

    move-object/from16 v16, v3

    invoke-direct/range {v16 .. v23}, Lio/didomi/sdk/V7$i;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/n;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v3, v0, Lio/didomi/sdk/t8;->A:I

    if-lez v3, :cond_18a

    goto :goto_190

    :cond_18a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_190
    iput v3, v0, Lio/didomi/sdk/t8;->A:I

    :cond_192
    invoke-virtual {v0, v1}, Lio/didomi/sdk/t8;->O(Lio/didomi/sdk/models/InternalVendor;)Z

    move-result v3

    if-eqz v3, :cond_1aa

    new-instance v3, Lio/didomi/sdk/V7$a;

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/h9;->i()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lio/didomi/sdk/V7$a$a;->e:Lio/didomi/sdk/V7$a$a;

    const/4 v12, 0x0

    const/4 v13, 0x4

    const/4 v14, 0x0

    move-object v9, v3

    invoke-direct/range {v9 .. v14}, Lio/didomi/sdk/V7$a;-><init>(Ljava/lang/CharSequence;Lio/didomi/sdk/V7$a$a;IILkotlin/jvm/internal/n;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1aa
    invoke-virtual {v0, v1}, Lio/didomi/sdk/t8;->P(Lio/didomi/sdk/models/InternalVendor;)Z

    move-result v3

    if-eqz v3, :cond_1c2

    new-instance v3, Lio/didomi/sdk/V7$a;

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/h9;->v()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lio/didomi/sdk/V7$a$a;->d:Lio/didomi/sdk/V7$a$a;

    const/4 v12, 0x0

    const/4 v13, 0x4

    const/4 v14, 0x0

    move-object v9, v3

    invoke-direct/range {v9 .. v14}, Lio/didomi/sdk/V7$a;-><init>(Ljava/lang/CharSequence;Lio/didomi/sdk/V7$a$a;IILkotlin/jvm/internal/n;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1c2
    invoke-static {v1}, Lio/didomi/sdk/q3;->h(Lio/didomi/sdk/models/InternalVendor;)Z

    move-result v3

    if-eqz v3, :cond_1d8

    new-instance v3, Lio/didomi/sdk/V7$c;

    invoke-virtual {v0, v1}, Lio/didomi/sdk/h9;->i(Lio/didomi/sdk/models/InternalVendor;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1d2

    const-string v1, ""

    :cond_1d2
    invoke-direct {v3, v1, v8, v6, v7}, Lio/didomi/sdk/V7$c;-><init>(Ljava/lang/String;IILkotlin/jvm/internal/n;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1d8
    new-instance v1, Lio/didomi/sdk/V7$h;

    const/4 v3, 0x1

    invoke-direct {v1, v8, v3, v7}, Lio/didomi/sdk/V7$h;-><init>(IILkotlin/jvm/internal/n;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e7

    :cond_1e2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_1e7
    return-object v2
.end method

.method public final v0()Z
    .registers 3

    invoke-virtual {p0}, Lio/didomi/sdk/h9;->J()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/models/InternalVendor;

    const/4 v1, 0x1

    if-eqz v0, :cond_14

    invoke-virtual {p0, v0}, Lio/didomi/sdk/h9;->z(Lio/didomi/sdk/models/InternalVendor;)Z

    move-result v0

    if-ne v0, v1, :cond_14

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return v1
.end method

.method public final w0()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/h9;->J()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/models/InternalVendor;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lio/didomi/sdk/models/InternalVendor;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return-object v0
.end method

.method public final x0()Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lio/didomi/sdk/t8;->v:Lio/didomi/sdk/v3;

    sget-object v2, Lio/didomi/sdk/W5;->b:Lio/didomi/sdk/W5;

    const-string v1, "settings"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final y0()Z
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/t8;->C:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final z0()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/didomi/sdk/g8$g;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lio/didomi/sdk/h9;->j()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/p;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/didomi/sdk/models/InternalVendor;

    invoke-virtual {p0, v2}, Lio/didomi/sdk/t8;->M(Lio/didomi/sdk/models/InternalVendor;)Lio/didomi/sdk/g8$g;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_27
    return-object v1
.end method
