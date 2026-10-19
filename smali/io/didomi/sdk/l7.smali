###### Class io.didomi.drawable.C1824l7 (io.didomi.sdk.l7)
.class public final Lio/didomi/sdk/l7;
.super Lio/didomi/sdk/a5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/didomi/sdk/l7$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b6\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010!\n\u0000\n\u0002\u0010 \n\u0002\u0008\n\n\u0002\u0010\u0008\n\u0002\u0008-\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\r\u0008\u0007\u0018\u0000 \u008d\u00012\u00020\u0001:\u00017Bi\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0017\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u001d\u001a\u00020\u001cH\u0002\u00a2\u0006\u0004\u0008\u001f\u0010 J\u001f\u0010$\u001a\u00020\u001e2\u0006\u0010\"\u001a\u00020!2\u0006\u0010#\u001a\u00020\u001cH\u0002\u00a2\u0006\u0004\u0008$\u0010%J\u001f\u0010$\u001a\u00020\u001e2\u0006\u0010\'\u001a\u00020&2\u0006\u0010#\u001a\u00020\u001cH\u0002\u00a2\u0006\u0004\u0008$\u0010(J\u000f\u0010*\u001a\u00020)H\u0002\u00a2\u0006\u0004\u0008*\u0010+J\u000f\u0010,\u001a\u00020)H\u0002\u00a2\u0006\u0004\u0008,\u0010+J\u0015\u0010.\u001a\u00020-2\u0006\u0010\"\u001a\u00020!\u00a2\u0006\u0004\u0008.\u0010/J\u0015\u00101\u001a\u0002002\u0006\u0010\'\u001a\u00020&\u00a2\u0006\u0004\u00081\u00102J\u001d\u00103\u001a\u00020\u001e2\u0006\u0010\'\u001a\u00020&2\u0006\u0010\u001d\u001a\u00020\u001c\u00a2\u0006\u0004\u00083\u0010(J\u001d\u00104\u001a\u00020\u001e2\u0006\u0010\'\u001a\u00020&2\u0006\u0010\u001d\u001a\u00020\u001c\u00a2\u0006\u0004\u00084\u0010(J\u0015\u00105\u001a\u00020)2\u0006\u0010#\u001a\u00020\u001c\u00a2\u0006\u0004\u00085\u00106J\u001d\u00107\u001a\u00020)2\u0006\u0010\'\u001a\u00020&2\u0006\u0010#\u001a\u00020\u001c\u00a2\u0006\u0004\u00087\u00108J\u0015\u00109\u001a\u00020)2\u0006\u0010#\u001a\u00020\u001c\u00a2\u0006\u0004\u00089\u00106J\u0015\u0010:\u001a\u00020)2\u0006\u0010#\u001a\u00020\u001c\u00a2\u0006\u0004\u0008:\u00106J\r\u0010;\u001a\u00020)\u00a2\u0006\u0004\u0008;\u0010+J+\u00107\u001a\u00020)2\u000c\u0010=\u001a\u0008\u0012\u0004\u0012\u00020&0<2\u000c\u0010?\u001a\u0008\u0012\u0004\u0012\u00020!0>H\u0014\u00a2\u0006\u0004\u00087\u0010@J\u0015\u0010A\u001a\u0008\u0012\u0004\u0012\u00020&0>H\u0016\u00a2\u0006\u0004\u0008A\u0010BJ\r\u0010C\u001a\u00020\u001c\u00a2\u0006\u0004\u0008C\u0010DJ\r\u0010E\u001a\u00020\u001c\u00a2\u0006\u0004\u0008E\u0010DJ\u000f\u0010F\u001a\u00020)H\u0010\u00a2\u0006\u0004\u0008F\u0010+J\u0017\u0010G\u001a\u00020\u001c2\u0006\u0010\'\u001a\u00020&H\u0000\u00a2\u0006\u0004\u0008G\u0010HR\"\u0010O\u001a\u00020I8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008J\u0010K\u001a\u0004\u0008L\u0010M\"\u0004\u0008$\u0010NR\"\u0010R\u001a\u00020I8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008P\u0010K\u001a\u0004\u0008Q\u0010M\"\u0004\u00083\u0010NR\"\u0010U\u001a\u00020I8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008S\u0010K\u001a\u0004\u0008T\u0010M\"\u0004\u00084\u0010NR\u0014\u0010W\u001a\u00020\u001c8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008V\u0010DR\u0011\u0010Z\u001a\u00020\u001e8F\u00a2\u0006\u0006\u001a\u0004\u0008X\u0010YR\u0014\u0010\\\u001a\u00020\u001e8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008[\u0010YR\u0014\u0010^\u001a\u00020\u001e8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008]\u0010YR\u0014\u0010`\u001a\u00020\u001e8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008_\u0010YR\u0014\u0010b\u001a\u00020\u001e8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008a\u0010YR\u0014\u0010d\u001a\u00020\u001e8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008c\u0010YR\u0014\u0010f\u001a\u00020\u001e8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008e\u0010YR\u0014\u0010h\u001a\u00020\u001e8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008g\u0010YR\u0014\u0010j\u001a\u00020\u001e8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008i\u0010YR\u0014\u0010l\u001a\u00020\u001e8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008k\u0010YR\u0014\u0010n\u001a\u00020\u001e8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008m\u0010YR\u0014\u0010p\u001a\u00020\u001e8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008o\u0010YR\u0014\u0010r\u001a\u00020\u001e8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008q\u0010YR\u0014\u0010t\u001a\u00020\u001e8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008s\u0010YR\u0014\u0010v\u001a\u00020\u001c8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008u\u0010DR\u001a\u0010y\u001a\u0008\u0012\u0004\u0012\u00020w0>8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008x\u0010BR\u0014\u0010{\u001a\u00020\u001e8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008z\u0010YR\u0017\u0010~\u001a\u0008\u0012\u0004\u0012\u00020|0<8F\u00a2\u0006\u0006\u001a\u0004\u0008}\u0010BR\u0018\u0010\u0080\u0001\u001a\u0008\u0012\u0004\u0012\u00020|0<8F\u00a2\u0006\u0006\u001a\u0004\u0008\u007f\u0010BR\u0015\u0010\u0084\u0001\u001a\u00030\u0081\u00018F\u00a2\u0006\u0008\u001a\u0006\u0008\u0082\u0001\u0010\u0083\u0001R\u0015\u0010\u0086\u0001\u001a\u00030\u0081\u00018F\u00a2\u0006\u0008\u001a\u0006\u0008\u0085\u0001\u0010\u0083\u0001R\u0019\u0010\u0088\u0001\u001a\u0008\u0012\u0004\u0012\u00020-0>8F\u00a2\u0006\u0007\u001a\u0005\u0008\u0087\u0001\u0010BR\u0019\u0010\u008a\u0001\u001a\u0008\u0012\u0004\u0012\u0002000>8F\u00a2\u0006\u0007\u001a\u0005\u0008\u0089\u0001\u0010BR\u0019\u0010\u008c\u0001\u001a\u0008\u0012\u0004\u0012\u0002000>8F\u00a2\u0006\u0007\u001a\u0005\u0008\u008b\u0001\u0010B\u00a8\u0006\u008e\u0001"
    }
    d2 = {
        "Lio/didomi/sdk/l7;",
        "Lio/didomi/sdk/a5;",
        "Lio/didomi/sdk/apiEvents/b;",
        "apiEventsRepository",
        "Lio/didomi/sdk/H;",
        "configurationRepository",
        "Lio/didomi/sdk/V;",
        "consentRepository",
        "Lio/didomi/sdk/Z;",
        "contextHelper",
        "Lio/didomi/sdk/M2;",
        "eventsRepository",
        "Lio/didomi/sdk/v3;",
        "languagesHelper",
        "Lio/didomi/sdk/G8;",
        "userChoicesInfoProvider",
        "Lio/didomi/sdk/P8;",
        "userStatusRepository",
        "Lio/didomi/sdk/D8;",
        "uiProvider",
        "Lio/didomi/sdk/V8;",
        "vendorRepository",
        "Lio/didomi/sdk/C3;",
        "logoProvider",
        "Lio/didomi/sdk/I3;",
        "navigationManager",
        "<init>",
        "(Lio/didomi/sdk/apiEvents/b;Lio/didomi/sdk/H;Lio/didomi/sdk/V;Lio/didomi/sdk/Z;Lio/didomi/sdk/M2;Lio/didomi/sdk/v3;Lio/didomi/sdk/G8;Lio/didomi/sdk/P8;Lio/didomi/sdk/D8;Lio/didomi/sdk/V8;Lio/didomi/sdk/C3;Lio/didomi/sdk/I3;)V",
        "",
        "checked",
        "",
        "h",
        "(Z)Ljava/lang/String;",
        "Lio/didomi/sdk/purpose/common/model/PurposeCategory;",
        "category",
        "isChecked",
        "b",
        "(Lio/didomi/sdk/purpose/common/model/PurposeCategory;Z)Ljava/lang/String;",
        "Lio/didomi/sdk/models/InternalPurpose;",
        "purpose",
        "(Lio/didomi/sdk/models/InternalPurpose;Z)Ljava/lang/String;",
        "",
        "B1",
        "()V",
        "A1",
        "Lio/didomi/sdk/J6$d;",
        "n",
        "(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Lio/didomi/sdk/J6$d;",
        "Lio/didomi/sdk/J6$i;",
        "z",
        "(Lio/didomi/sdk/models/InternalPurpose;)Lio/didomi/sdk/J6$i;",
        "c",
        "d",
        "e",
        "(Z)V",
        "a",
        "(Lio/didomi/sdk/models/InternalPurpose;Z)V",
        "f",
        "g",
        "e2",
        "",
        "purposes",
        "",
        "categories",
        "(Ljava/util/List;Ljava/util/List;)V",
        "P0",
        "()Ljava/util/List;",
        "c2",
        "()Z",
        "d2",
        "z1",
        "y",
        "(Lio/didomi/sdk/models/InternalPurpose;)Z",
        "",
        "R",
        "I",
        "I1",
        "()I",
        "(I)V",
        "currentDataProcessingIndex",
        "S",
        "K1",
        "focusedPosition",
        "T",
        "L1",
        "focusedPositionForCategory",
        "b2",
        "selectedPurposeHasVendorsCountInfo",
        "J1",
        "()Ljava/lang/String;",
        "dataUsageInfoLabel",
        "Z1",
        "quickActionTitleLabel",
        "Y1",
        "quickActionTextLabel",
        "U1",
        "purposeOnLabel",
        "T1",
        "purposeOffLabel",
        "F1",
        "categoriesSectionTitleLabel",
        "X1",
        "purposesSectionTitleLabel",
        "Y",
        "essentialPurposeText",
        "W1",
        "purposeSettingsLabel",
        "V1",
        "purposeReadMoreLabel",
        "P1",
        "purposeLegIntLabel",
        "Q1",
        "purposeLegalDescriptionLabel",
        "C1",
        "additionalDataProcessingDescriptionLabel",
        "D1",
        "additionalDataProcessingSectionLabel",
        "a2",
        "selectedPurposeHasAdditionalInfo",
        "Lio/didomi/sdk/x6;",
        "E1",
        "additionalInfoList",
        "c0",
        "illustrationsHeaderLabel",
        "Lio/didomi/sdk/J6;",
        "R1",
        "purposeList",
        "S1",
        "purposeListForSelectedCategory",
        "Lio/didomi/sdk/J6$c;",
        "G1",
        "()Lio/didomi/sdk/J6$c;",
        "categoryBulk",
        "M1",
        "purposeBulk",
        "H1",
        "categoryItemList",
        "N1",
        "purposeItemList",
        "O1",
        "purposeItemListForSelectedCategory",
        "U",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final U:Lio/didomi/sdk/l7$a;


# instance fields
.field private R:I

.field private S:I

.field private T:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/didomi/sdk/l7$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/didomi/sdk/l7$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lio/didomi/sdk/l7;->U:Lio/didomi/sdk/l7$a;

    return-void
.end method

.method public constructor <init>(Lio/didomi/sdk/apiEvents/b;Lio/didomi/sdk/H;Lio/didomi/sdk/V;Lio/didomi/sdk/Z;Lio/didomi/sdk/M2;Lio/didomi/sdk/v3;Lio/didomi/sdk/G8;Lio/didomi/sdk/P8;Lio/didomi/sdk/D8;Lio/didomi/sdk/V8;Lio/didomi/sdk/C3;Lio/didomi/sdk/I3;)V
    .registers 14

    const-string v0, "apiEventsRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configurationRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consentRepository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contextHelper"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventsRepository"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "languagesHelper"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userChoicesInfoProvider"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userStatusRepository"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiProvider"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vendorRepository"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logoProvider"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "navigationManager"

    invoke-static {p12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p12}, Lio/didomi/sdk/a5;-><init>(Lio/didomi/sdk/apiEvents/b;Lio/didomi/sdk/H;Lio/didomi/sdk/V;Lio/didomi/sdk/Z;Lio/didomi/sdk/M2;Lio/didomi/sdk/v3;Lio/didomi/sdk/G8;Lio/didomi/sdk/P8;Lio/didomi/sdk/D8;Lio/didomi/sdk/V8;Lio/didomi/sdk/C3;Lio/didomi/sdk/I3;)V

    const/4 p1, -0x1

    iput p1, p0, Lio/didomi/sdk/l7;->R:I

    return-void
.end method

.method private final A1()V
    .registers 2

    :try_start_0
    invoke-virtual {p0}, Lio/didomi/sdk/a5;->g()V

    new-instance v0, Lio/didomi/sdk/events/PreferencesClickDisagreeToAllPurposesEvent;

    invoke-direct {v0}, Lio/didomi/sdk/events/PreferencesClickDisagreeToAllPurposesEvent;-><init>()V

    invoke-virtual {p0, v0}, Lio/didomi/sdk/a5;->a(Lio/didomi/sdk/events/Event;)V
    :try_end_b
    .catch Lio/didomi/sdk/exceptions/DidomiNotReadyException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_10

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_10
    return-void
.end method

.method private final B1()V
    .registers 2

    :try_start_0
    invoke-virtual {p0}, Lio/didomi/sdk/a5;->l()V

    new-instance v0, Lio/didomi/sdk/events/PreferencesClickAgreeToAllPurposesEvent;

    invoke-direct {v0}, Lio/didomi/sdk/events/PreferencesClickAgreeToAllPurposesEvent;-><init>()V

    invoke-virtual {p0, v0}, Lio/didomi/sdk/a5;->a(Lio/didomi/sdk/events/Event;)V
    :try_end_b
    .catch Lio/didomi/sdk/exceptions/DidomiNotReadyException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_10

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_10
    return-void
.end method

.method private final b(Lio/didomi/sdk/models/InternalPurpose;Z)Ljava/lang/String;
    .registers 9

    invoke-virtual {p1}, Lio/didomi/sdk/models/InternalPurpose;->isEssential()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lio/didomi/sdk/l7;->Y()Ljava/lang/String;

    move-result-object p1

    goto :goto_2a

    :cond_b
    if-eqz p2, :cond_1c

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->d0()Lio/didomi/sdk/v3;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    const-string v1, "consent_on"

    invoke-static/range {v0 .. v5}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2a

    :cond_1c
    invoke-virtual {p0}, Lio/didomi/sdk/a5;->d0()Lio/didomi/sdk/v3;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    const-string v1, "consent_off"

    invoke-static/range {v0 .. v5}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_2a
    return-object p1
.end method

.method private final b(Lio/didomi/sdk/purpose/common/model/PurposeCategory;Z)Ljava/lang/String;
    .registers 9

    invoke-virtual {p0, p1}, Lio/didomi/sdk/a5;->k(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lio/didomi/sdk/l7;->Y()Ljava/lang/String;

    move-result-object p1

    goto :goto_2a

    :cond_b
    if-eqz p2, :cond_1c

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->d0()Lio/didomi/sdk/v3;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    const-string v1, "consent_on"

    invoke-static/range {v0 .. v5}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2a

    :cond_1c
    invoke-virtual {p0}, Lio/didomi/sdk/a5;->d0()Lio/didomi/sdk/v3;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    const-string v1, "consent_off"

    invoke-static/range {v0 .. v5}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_2a
    return-object p1
.end method

.method private final b2()Z
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->U0()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->m1()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->n1()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method private final h(Z)Ljava/lang/String;
    .registers 8

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->d0()Lio/didomi/sdk/v3;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    const-string v1, "object_to_legitimate_interest_status_on"

    invoke-static/range {v0 .. v5}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1f

    :cond_11
    invoke-virtual {p0}, Lio/didomi/sdk/a5;->d0()Lio/didomi/sdk/v3;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    const-string v1, "object_to_legitimate_interest_status_off"

    invoke-static/range {v0 .. v5}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_1f
    return-object p1
.end method


# virtual methods
.method public final C1()Ljava/lang/String;
    .registers 8

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->d0()Lio/didomi/sdk/v3;

    move-result-object v0

    const-string v1, "list_of_additional_data_processing_on_purposes"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final D1()Ljava/lang/String;
    .registers 8

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->d0()Lio/didomi/sdk/v3;

    move-result-object v0

    sget-object v2, Lio/didomi/sdk/W5;->b:Lio/didomi/sdk/W5;

    const-string v1, "additional_data_processing"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final E1()Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/didomi/sdk/x6;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lio/didomi/sdk/x6$c;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lio/didomi/sdk/x6$c;-><init>(IILkotlin/jvm/internal/n;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->u0()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/didomi/sdk/models/InternalPurpose;

    if-eqz v1, :cond_ff

    const-string v5, "purpose"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lio/didomi/sdk/a5;->k(Lio/didomi/sdk/models/InternalPurpose;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lio/didomi/sdk/x6$e;

    const/4 v7, 0x2

    invoke-direct {v6, v5, v2, v7, v4}, Lio/didomi/sdk/x6$e;-><init>(Ljava/lang/String;IILkotlin/jvm/internal/n;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->i0()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lkotlin/text/g;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/2addr v6, v3

    if-eqz v6, :cond_3a

    goto :goto_3b

    :cond_3a
    move-object v5, v4

    :goto_3b
    if-eqz v5, :cond_51

    new-instance v6, Lio/didomi/sdk/x6$d;

    invoke-virtual {p0}, Lio/didomi/sdk/l7;->Q1()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8, v2, v7, v4}, Lio/didomi/sdk/x6$d;-><init>(Ljava/lang/String;IILkotlin/jvm/internal/n;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Lio/didomi/sdk/x6$a;

    invoke-direct {v6, v5, v2, v7, v4}, Lio/didomi/sdk/x6$a;-><init>(Ljava/lang/String;IILkotlin/jvm/internal/n;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_51
    invoke-virtual {p0}, Lio/didomi/sdk/a5;->b0()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    xor-int/2addr v6, v3

    if-eqz v6, :cond_5d

    goto :goto_5e

    :cond_5d
    move-object v5, v4

    :goto_5e
    if-eqz v5, :cond_a5

    new-instance v6, Lio/didomi/sdk/x6$d;

    invoke-virtual {p0}, Lio/didomi/sdk/l7;->c0()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8, v2, v7, v4}, Lio/didomi/sdk/x6$d;-><init>(Ljava/lang/String;IILkotlin/jvm/internal/n;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    :goto_71
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v9, v6, 0x1

    if-gez v6, :cond_82

    invoke-static {}, Lkotlin/collections/p;->throwIndexOverflow()V

    :cond_82
    check-cast v8, Ljava/lang/String;

    new-instance v10, Lio/didomi/sdk/x6$a;

    invoke-static {v8}, Lkotlin/text/g;->getLastIndex(Ljava/lang/CharSequence;)I

    move-result v11

    if-ge v6, v11, :cond_9d

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0xa

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_9d
    invoke-direct {v10, v8, v2, v7, v4}, Lio/didomi/sdk/x6$a;-><init>(Ljava/lang/String;IILkotlin/jvm/internal/n;)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v6, v9

    goto :goto_71

    :cond_a5
    invoke-virtual {p0}, Lio/didomi/sdk/a5;->m1()Z

    move-result v5

    if-eqz v5, :cond_ce

    invoke-virtual {p0, v1}, Lio/didomi/sdk/a5;->m(Lio/didomi/sdk/models/InternalPurpose;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_ce

    new-instance v5, Lio/didomi/sdk/x6$f;

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->d0()Lio/didomi/sdk/v3;

    move-result-object v9

    sget-object v11, Lio/didomi/sdk/W5;->b:Lio/didomi/sdk/W5;

    const/4 v12, 0x0

    const/4 v13, 0x4

    const/4 v14, 0x0

    const-string v10, "consent"

    invoke-static/range {v9 .. v14}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    sget-object v9, Lio/didomi/sdk/d9;->c:Lio/didomi/sdk/d9;

    const/4 v10, 0x0

    const/16 v11, 0x8

    move-object v6, v5

    invoke-direct/range {v6 .. v12}, Lio/didomi/sdk/x6$f;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/didomi/sdk/d9;IILkotlin/jvm/internal/n;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_ce
    invoke-virtual {p0}, Lio/didomi/sdk/a5;->n1()Z

    move-result v5

    if-eqz v5, :cond_f7

    invoke-virtual {p0, v1}, Lio/didomi/sdk/a5;->n(Lio/didomi/sdk/models/InternalPurpose;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_f7

    new-instance v1, Lio/didomi/sdk/x6$f;

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->d0()Lio/didomi/sdk/v3;

    move-result-object v9

    sget-object v11, Lio/didomi/sdk/W5;->b:Lio/didomi/sdk/W5;

    const/4 v12, 0x0

    const/4 v13, 0x4

    const/4 v14, 0x0

    const-string v10, "legitimate_interest"

    invoke-static/range {v9 .. v14}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    sget-object v9, Lio/didomi/sdk/d9;->d:Lio/didomi/sdk/d9;

    const/4 v10, 0x0

    const/16 v11, 0x8

    move-object v6, v1

    invoke-direct/range {v6 .. v12}, Lio/didomi/sdk/x6$f;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/didomi/sdk/d9;IILkotlin/jvm/internal/n;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f7
    new-instance v1, Lio/didomi/sdk/x6$b;

    invoke-direct {v1, v2, v3, v4}, Lio/didomi/sdk/x6$b;-><init>(IILkotlin/jvm/internal/n;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_ff
    return-object v0
.end method

.method public final F1()Ljava/lang/String;
    .registers 7

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->d0()Lio/didomi/sdk/v3;

    move-result-object v0

    sget-object v2, Lio/didomi/sdk/W5;->b:Lio/didomi/sdk/W5;

    const-string v1, "section_title_on_categories"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final G1()Lio/didomi/sdk/J6$c;
    .registers 9

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->s0()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/purpose/common/model/PurposeCategory;

    if-nez v0, :cond_20

    new-instance v0, Lio/didomi/sdk/J6$c;

    invoke-virtual {p0}, Lio/didomi/sdk/l7;->Y1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lio/didomi/sdk/l7;->T1()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lio/didomi/sdk/J6$c;-><init>(Ljava/lang/String;Ljava/lang/String;ZIILkotlin/jvm/internal/n;)V

    return-object v0

    :cond_20
    invoke-virtual {p0, v0}, Lio/didomi/sdk/a5;->f(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    move-result-object v0

    sget-object v1, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->d:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    if-ne v0, v1, :cond_2b

    const/4 v0, 0x1

    const/4 v4, 0x1

    goto :goto_2d

    :cond_2b
    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_2d
    if-eqz v4, :cond_34

    invoke-virtual {p0}, Lio/didomi/sdk/l7;->U1()Ljava/lang/String;

    move-result-object v0

    goto :goto_38

    :cond_34
    invoke-virtual {p0}, Lio/didomi/sdk/l7;->T1()Ljava/lang/String;

    move-result-object v0

    :goto_38
    move-object v3, v0

    new-instance v0, Lio/didomi/sdk/J6$c;

    invoke-virtual {p0}, Lio/didomi/sdk/l7;->Y1()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lio/didomi/sdk/J6$c;-><init>(Ljava/lang/String;Ljava/lang/String;ZIILkotlin/jvm/internal/n;)V

    return-object v0
.end method

.method public final H1()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/didomi/sdk/J6$d;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->G()Ljava/util/List;

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

    check-cast v2, Lio/didomi/sdk/purpose/common/model/PurposeCategory;

    invoke-virtual {p0, v2}, Lio/didomi/sdk/l7;->n(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Lio/didomi/sdk/J6$d;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_27
    return-object v1
.end method

.method public final I1()I
    .registers 2

    iget v0, p0, Lio/didomi/sdk/l7;->R:I

    return v0
.end method

.method public final J1()Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->d0()Lio/didomi/sdk/v3;

    move-result-object v0

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->I()Lio/didomi/sdk/H;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/H;->b()Lio/didomi/sdk/k;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/k;->f()Lio/didomi/sdk/k$g;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/k$g;->b()Lio/didomi/sdk/k$g$a;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/k$g$a;->f()Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lio/didomi/sdk/W5;->b:Lio/didomi/sdk/W5;

    const-string v3, "view_all_purposes"

    invoke-virtual {v0, v1, v3, v2}, Lio/didomi/sdk/v3;->a(Ljava/util/Map;Ljava/lang/String;Lio/didomi/sdk/W5;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final K1()I
    .registers 2

    iget v0, p0, Lio/didomi/sdk/l7;->S:I

    return v0
.end method

.method public final L1()I
    .registers 2

    iget v0, p0, Lio/didomi/sdk/l7;->T:I

    return v0
.end method

.method public final M1()Lio/didomi/sdk/J6$c;
    .registers 9

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->b()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {p0}, Lio/didomi/sdk/l7;->U1()Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_b
    invoke-virtual {p0}, Lio/didomi/sdk/l7;->T1()Ljava/lang/String;

    move-result-object v0

    :goto_f
    move-object v2, v0

    new-instance v7, Lio/didomi/sdk/J6$c;

    invoke-virtual {p0}, Lio/didomi/sdk/l7;->Y1()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lio/didomi/sdk/J6$c;-><init>(Ljava/lang/String;Ljava/lang/String;ZIILkotlin/jvm/internal/n;)V

    return-object v7
.end method

.method public final N1()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/didomi/sdk/J6$i;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->j0()Ljava/util/List;

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

    check-cast v2, Lio/didomi/sdk/models/InternalPurpose;

    invoke-virtual {p0, v2}, Lio/didomi/sdk/l7;->z(Lio/didomi/sdk/models/InternalPurpose;)Lio/didomi/sdk/J6$i;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_27
    return-object v1
.end method

.method public final O1()Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/didomi/sdk/J6$i;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->s0()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/purpose/common/model/PurposeCategory;

    if-eqz v0, :cond_6e

    invoke-virtual {v0}, Lio/didomi/sdk/purpose/common/model/PurposeCategory;->getChildren()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6e

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1b
    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/didomi/sdk/purpose/common/model/PurposeCategory;

    invoke-virtual {p0, v2}, Lio/didomi/sdk/a5;->h(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Lio/didomi/sdk/models/InternalPurpose;

    move-result-object v2

    if-eqz v2, :cond_1b

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_31
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lkotlin/collections/p;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_40
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_67

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lio/didomi/sdk/models/InternalPurpose;

    invoke-virtual {p0, v4}, Lio/didomi/sdk/l7;->y(Lio/didomi/sdk/models/InternalPurpose;)Z

    move-result v7

    new-instance v2, Lio/didomi/sdk/J6$i;

    invoke-virtual {p0, v4}, Lio/didomi/sdk/a5;->k(Lio/didomi/sdk/models/InternalPurpose;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v7}, Lio/didomi/sdk/l7;->b(Lio/didomi/sdk/models/InternalPurpose;Z)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/16 v9, 0x10

    const/4 v10, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lio/didomi/sdk/J6$i;-><init>(Lio/didomi/sdk/models/InternalPurpose;Ljava/lang/String;Ljava/lang/String;ZIILkotlin/jvm/internal/n;)V

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_40

    :cond_67
    invoke-static {v0}, Lkotlin/collections/p;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6e

    goto :goto_72

    :cond_6e
    invoke-static {}, Lkotlin/collections/p;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_72
    return-object v0
.end method

.method public P0()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->N0()Lio/didomi/sdk/V8;

    move-result-object v0

    invoke-static {v0}, Lio/didomi/sdk/W8;->c(Lio/didomi/sdk/V8;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/didomi/sdk/a5;->b(Ljava/util/List;)V

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->j1()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final P1()Ljava/lang/String;
    .registers 7

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->d0()Lio/didomi/sdk/v3;

    move-result-object v0

    const-string v1, "object_to_legitimate_interest"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final Q1()Ljava/lang/String;
    .registers 7

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->d0()Lio/didomi/sdk/v3;

    move-result-object v0

    sget-object v2, Lio/didomi/sdk/W5;->b:Lio/didomi/sdk/W5;

    const-string v1, "purpose_legal_description"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final R1()Ljava/util/List;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/didomi/sdk/J6;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lio/didomi/sdk/J6$h;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lio/didomi/sdk/J6$h;-><init>(IILkotlin/jvm/internal/n;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lio/didomi/sdk/J6$l;

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/l7;->J1()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    invoke-direct {v2, v6, v3, v7, v5}, Lio/didomi/sdk/J6$l;-><init>(Ljava/lang/String;IILkotlin/jvm/internal/n;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/a5;->k0()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/didomi/sdk/V5;->k(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/text/g;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/2addr v6, v4

    if-eqz v6, :cond_3a

    new-instance v6, Lio/didomi/sdk/J6$e;

    invoke-direct {v6, v2, v3, v7, v5}, Lio/didomi/sdk/J6$e;-><init>(Ljava/lang/String;IILkotlin/jvm/internal/n;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3a
    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/l7;->H1()Ljava/util/List;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/l7;->N1()Ljava/util/List;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/a5;->a0()Z

    move-result v8

    if-eqz v8, :cond_6a

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/a5;->I()Lio/didomi/sdk/H;

    move-result-object v8

    invoke-static {v8}, Lio/didomi/sdk/I;->e(Lio/didomi/sdk/H;)Z

    move-result v8

    if-eqz v8, :cond_6a

    new-instance v8, Lio/didomi/sdk/J6$k;

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/l7;->Z1()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v3, v7, v5}, Lio/didomi/sdk/J6$k;-><init>(Ljava/lang/String;IILkotlin/jvm/internal/n;)V

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/l7;->M1()Lio/didomi/sdk/J6$c;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7d

    :cond_6a
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_78

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_78

    const/4 v8, 0x0

    goto :goto_7d

    :cond_78
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    add-int/2addr v8, v4

    :goto_7d
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    xor-int/2addr v9, v4

    if-eqz v9, :cond_93

    new-instance v9, Lio/didomi/sdk/J6$k;

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/l7;->F1()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v3, v7, v5}, Lio/didomi/sdk/J6$k;-><init>(Ljava/lang/String;IILkotlin/jvm/internal/n;)V

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_93
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v4

    if-eqz v2, :cond_a9

    new-instance v2, Lio/didomi/sdk/J6$k;

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/l7;->X1()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9, v3, v7, v5}, Lio/didomi/sdk/J6$k;-><init>(Ljava/lang/String;IILkotlin/jvm/internal/n;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_a9
    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/a5;->s1()Z

    move-result v2

    if-eqz v2, :cond_11b

    new-instance v2, Lio/didomi/sdk/J6$f;

    invoke-direct {v2, v3, v4, v5}, Lio/didomi/sdk/J6$f;-><init>(IILkotlin/jvm/internal/n;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lio/didomi/sdk/J6$a;

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/l7;->C1()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6, v3, v7, v5}, Lio/didomi/sdk/J6$a;-><init>(Ljava/lang/String;IILkotlin/jvm/internal/n;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lio/didomi/sdk/J6$k;

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/l7;->D1()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6, v3, v7, v5}, Lio/didomi/sdk/J6$k;-><init>(Ljava/lang/String;IILkotlin/jvm/internal/n;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/a5;->D0()Ljava/util/List;

    move-result-object v2

    new-instance v6, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v2, v9}, Lkotlin/collections/p;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v6, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v11, 0x0

    :goto_e3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_118

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v16, v11, 0x1

    if-gez v11, :cond_f4

    invoke-static {}, Lkotlin/collections/p;->throwIndexOverflow()V

    :cond_f4
    move-object v12, v9

    check-cast v12, Lio/didomi/sdk/o0;

    new-instance v15, Lio/didomi/sdk/J6$b;

    invoke-interface {v12}, Lio/didomi/sdk/o0;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lkotlin/text/g;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x0

    const/16 v14, 0x8

    const/16 v17, 0x0

    move-object v9, v15

    move-object v7, v15

    move-object/from16 v15, v17

    invoke-direct/range {v9 .. v15}, Lio/didomi/sdk/J6$b;-><init>(Ljava/lang/String;ILio/didomi/sdk/o0;IILkotlin/jvm/internal/n;)V

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move/from16 v11, v16

    const/4 v7, 0x2

    goto :goto_e3

    :cond_118
    invoke-interface {v1, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_11b
    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/a5;->u1()Z

    move-result v2

    if-eqz v2, :cond_161

    new-instance v2, Lio/didomi/sdk/J6$f;

    invoke-direct {v2, v3, v4, v5}, Lio/didomi/sdk/J6$f;-><init>(IILkotlin/jvm/internal/n;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lio/didomi/sdk/J6$k;

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/a5;->d0()Lio/didomi/sdk/v3;

    move-result-object v9

    sget-object v11, Lio/didomi/sdk/W5;->b:Lio/didomi/sdk/W5;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xc

    const/4 v15, 0x0

    const-string v10, "section_title_on_storage"

    invoke-static/range {v9 .. v15}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    invoke-direct {v2, v6, v3, v7, v5}, Lio/didomi/sdk/J6$k;-><init>(Ljava/lang/String;IILkotlin/jvm/internal/n;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lio/didomi/sdk/J6$j;

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/a5;->d0()Lio/didomi/sdk/v3;

    move-result-object v9

    const/4 v11, 0x0

    const/16 v14, 0xe

    const-string v10, "sdk_storage_disclosure_title"

    invoke-static/range {v9 .. v15}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    invoke-direct {v2, v6, v3, v7, v5}, Lio/didomi/sdk/J6$j;-><init>(Ljava/lang/String;IILkotlin/jvm/internal/n;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lio/didomi/sdk/J6$f;

    invoke-direct {v2, v3, v4, v5}, Lio/didomi/sdk/J6$f;-><init>(IILkotlin/jvm/internal/n;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_161
    new-instance v2, Lio/didomi/sdk/J6$g;

    invoke-direct {v2, v3, v4, v5}, Lio/didomi/sdk/J6$g;-><init>(IILkotlin/jvm/internal/n;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v2, v0, Lio/didomi/sdk/l7;->S:I

    if-nez v2, :cond_171

    if-ltz v8, :cond_171

    iput v8, v0, Lio/didomi/sdk/l7;->S:I

    :cond_171
    return-object v1
.end method

.method public final S1()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/didomi/sdk/J6;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lio/didomi/sdk/J6$h;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lio/didomi/sdk/J6$h;-><init>(IILkotlin/jvm/internal/n;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->s0()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/didomi/sdk/purpose/common/model/PurposeCategory;

    if-nez v1, :cond_1e

    goto/16 :goto_b5

    :cond_1e
    const-string v5, "selectedCategory.value ?: return@apply"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lio/didomi/sdk/J6$l;

    invoke-virtual {p0, v1}, Lio/didomi/sdk/a5;->e(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    invoke-direct {v5, v6, v2, v7, v4}, Lio/didomi/sdk/J6$l;-><init>(Ljava/lang/String;IILkotlin/jvm/internal/n;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1}, Lio/didomi/sdk/a5;->d(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/text/g;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/2addr v5, v3

    if-eqz v5, :cond_43

    new-instance v5, Lio/didomi/sdk/J6$e;

    invoke-direct {v5, v1, v2, v7, v4}, Lio/didomi/sdk/J6$e;-><init>(Ljava/lang/String;IILkotlin/jvm/internal/n;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_43
    invoke-virtual {p0}, Lio/didomi/sdk/l7;->O1()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    xor-int/2addr v5, v3

    if-eqz v5, :cond_ad

    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v1, v6}, Lkotlin/collections/p;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_71

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/didomi/sdk/J6$i;

    invoke-virtual {v8}, Lio/didomi/sdk/J6$i;->c()Lio/didomi/sdk/models/InternalPurpose;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5d

    :cond_71
    invoke-virtual {p0, v5}, Lio/didomi/sdk/a5;->d(Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_94

    new-instance v5, Lio/didomi/sdk/J6$k;

    invoke-virtual {p0}, Lio/didomi/sdk/l7;->Z1()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2, v7, v4}, Lio/didomi/sdk/J6$k;-><init>(Ljava/lang/String;IILkotlin/jvm/internal/n;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v5, p0, Lio/didomi/sdk/l7;->T:I

    if-nez v5, :cond_8d

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    iput v5, p0, Lio/didomi/sdk/l7;->T:I

    :cond_8d
    invoke-virtual {p0}, Lio/didomi/sdk/l7;->G1()Lio/didomi/sdk/J6$c;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_94
    new-instance v5, Lio/didomi/sdk/J6$k;

    invoke-virtual {p0}, Lio/didomi/sdk/l7;->X1()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2, v7, v4}, Lio/didomi/sdk/J6$k;-><init>(Ljava/lang/String;IILkotlin/jvm/internal/n;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v5, p0, Lio/didomi/sdk/l7;->T:I

    if-nez v5, :cond_aa

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    iput v5, p0, Lio/didomi/sdk/l7;->T:I

    :cond_aa
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_ad
    new-instance v1, Lio/didomi/sdk/J6$g;

    invoke-direct {v1, v2, v3, v4}, Lio/didomi/sdk/J6$g;-><init>(IILkotlin/jvm/internal/n;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_b5
    return-object v0
.end method

.method public final T1()Ljava/lang/String;
    .registers 7

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->d0()Lio/didomi/sdk/v3;

    move-result-object v0

    const-string v1, "purposes_off"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final U1()Ljava/lang/String;
    .registers 7

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->d0()Lio/didomi/sdk/v3;

    move-result-object v0

    const-string v1, "purposes_on"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final V1()Ljava/lang/String;
    .registers 7

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->d0()Lio/didomi/sdk/v3;

    move-result-object v0

    const-string v1, "read_more"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final W1()Ljava/lang/String;
    .registers 7

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->d0()Lio/didomi/sdk/v3;

    move-result-object v0

    sget-object v2, Lio/didomi/sdk/W5;->b:Lio/didomi/sdk/W5;

    const-string v1, "settings"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final X1()Ljava/lang/String;
    .registers 7

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->d0()Lio/didomi/sdk/v3;

    move-result-object v0

    sget-object v2, Lio/didomi/sdk/W5;->b:Lio/didomi/sdk/W5;

    const-string v1, "section_title_on_purposes"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Y()Ljava/lang/String;
    .registers 8

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->d0()Lio/didomi/sdk/v3;

    move-result-object v0

    const-string v1, "essential_purpose_label"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final Y1()Ljava/lang/String;
    .registers 7

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->d0()Lio/didomi/sdk/v3;

    move-result-object v0

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->I()Lio/didomi/sdk/H;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/H;->b()Lio/didomi/sdk/k;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/k;->f()Lio/didomi/sdk/k$g;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/k$g;->b()Lio/didomi/sdk/k$g$a;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/k$g$a;->b()Ljava/util/Map;

    move-result-object v1

    const-string v2, "bulk_action_on_purposes"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/util/Map;Ljava/lang/String;Lio/didomi/sdk/W5;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final Z1()Ljava/lang/String;
    .registers 7

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->d0()Lio/didomi/sdk/v3;

    move-result-object v0

    sget-object v2, Lio/didomi/sdk/W5;->b:Lio/didomi/sdk/W5;

    const-string v1, "bulk_action_section_title"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lio/didomi/sdk/models/InternalPurpose;Z)V
    .registers 4

    const-string v0, "purpose"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_b

    invoke-virtual {p0, p1}, Lio/didomi/sdk/a5;->s(Lio/didomi/sdk/models/InternalPurpose;)V

    goto :goto_e

    :cond_b
    invoke-virtual {p0, p1}, Lio/didomi/sdk/a5;->r(Lio/didomi/sdk/models/InternalPurpose;)V

    :goto_e
    invoke-virtual {p0}, Lio/didomi/sdk/a5;->f1()V

    return-void
.end method

.method protected a(Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;",
            "Ljava/util/List<",
            "Lio/didomi/sdk/purpose/common/model/PurposeCategory;",
            ">;)V"
        }
    .end annotation

    const-string v0, "purposes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "categories"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/didomi/sdk/p4;

    invoke-direct {v0, p2}, Lio/didomi/sdk/p4;-><init>(Ljava/util/List;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public final a2()Z
    .registers 5

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->u0()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/models/InternalPurpose;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Lio/didomi/sdk/models/InternalPurpose;->getDescriptionLegal()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1a

    invoke-static {v3}, Lkotlin/text/g;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/2addr v3, v1

    goto :goto_1b

    :cond_1a
    const/4 v3, 0x0

    :goto_1b
    if-nez v3, :cond_2c

    invoke-virtual {v0}, Lio/didomi/sdk/models/InternalPurpose;->getIllustrations()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    goto :goto_2a

    :cond_29
    const/4 v0, 0x0

    :goto_2a
    if-eqz v0, :cond_2e

    :cond_2c
    const/4 v0, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v0, 0x0

    :goto_2f
    if-nez v0, :cond_39

    invoke-direct {p0}, Lio/didomi/sdk/l7;->b2()Z

    move-result v0

    if-eqz v0, :cond_38

    goto :goto_39

    :cond_38
    const/4 v1, 0x0

    :cond_39
    :goto_39
    return v1
.end method

.method public final b(I)V
    .registers 2

    iput p1, p0, Lio/didomi/sdk/l7;->R:I

    return-void
.end method

.method public final c(Lio/didomi/sdk/models/InternalPurpose;Z)Ljava/lang/String;
    .registers 6

    const-string v0, "purpose"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/didomi/sdk/a5;->m(Lio/didomi/sdk/models/InternalPurpose;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2a

    sget-object v1, Lkotlin/jvm/internal/o0;->a:Lkotlin/jvm/internal/o0;

    invoke-direct {p0, p1, p2}, Lio/didomi/sdk/l7;->b(Lio/didomi/sdk/models/InternalPurpose;Z)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    new-array v1, p2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object v0, v1, p1

    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%s - %s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "format(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2e

    :cond_2a
    invoke-direct {p0, p1, p2}, Lio/didomi/sdk/l7;->b(Lio/didomi/sdk/models/InternalPurpose;Z)Ljava/lang/String;

    move-result-object p1

    :goto_2e
    return-object p1
.end method

.method public final c(I)V
    .registers 2

    iput p1, p0, Lio/didomi/sdk/l7;->S:I

    return-void
.end method

.method public c0()Ljava/lang/String;
    .registers 8

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->d0()Lio/didomi/sdk/v3;

    move-result-object v0

    sget-object v2, Lio/didomi/sdk/W5;->b:Lio/didomi/sdk/W5;

    const-string v1, "purpose_illustration_explanation"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c2()Z
    .registers 4

    iget v0, p0, Lio/didomi/sdk/l7;->R:I

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->D0()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_10

    const/4 v2, 0x0

    goto :goto_1a

    :cond_10
    iget v0, p0, Lio/didomi/sdk/l7;->S:I

    add-int/2addr v0, v2

    iput v0, p0, Lio/didomi/sdk/l7;->S:I

    iget v0, p0, Lio/didomi/sdk/l7;->R:I

    add-int/2addr v0, v2

    iput v0, p0, Lio/didomi/sdk/l7;->R:I

    :goto_1a
    return v2
.end method

.method public final d(Lio/didomi/sdk/models/InternalPurpose;Z)Ljava/lang/String;
    .registers 6

    const-string v0, "purpose"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/didomi/sdk/a5;->n(Lio/didomi/sdk/models/InternalPurpose;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2a

    sget-object v0, Lkotlin/jvm/internal/o0;->a:Lkotlin/jvm/internal/o0;

    invoke-direct {p0, p2}, Lio/didomi/sdk/l7;->h(Z)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p1, v1, p2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%s - %s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "format(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2e

    :cond_2a
    invoke-direct {p0, p2}, Lio/didomi/sdk/l7;->h(Z)Ljava/lang/String;

    move-result-object p1

    :goto_2e
    return-object p1
.end method

.method public final d(I)V
    .registers 2

    iput p1, p0, Lio/didomi/sdk/l7;->T:I

    return-void
.end method

.method public final d2()Z
    .registers 2

    iget v0, p0, Lio/didomi/sdk/l7;->R:I

    if-gtz v0, :cond_6

    const/4 v0, 0x0

    goto :goto_11

    :cond_6
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lio/didomi/sdk/l7;->R:I

    iget v0, p0, Lio/didomi/sdk/l7;->S:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lio/didomi/sdk/l7;->S:I

    const/4 v0, 0x1

    :goto_11
    return v0
.end method

.method public final e(Z)V
    .registers 2

    if-eqz p1, :cond_6

    invoke-direct {p0}, Lio/didomi/sdk/l7;->B1()V

    goto :goto_9

    :cond_6
    invoke-direct {p0}, Lio/didomi/sdk/l7;->A1()V

    :goto_9
    invoke-virtual {p0}, Lio/didomi/sdk/a5;->f1()V

    return-void
.end method

.method public final e2()V
    .registers 2

    new-instance v0, Lio/didomi/sdk/events/PreferencesClickViewPurposesEvent;

    invoke-direct {v0}, Lio/didomi/sdk/events/PreferencesClickViewPurposesEvent;-><init>()V

    invoke-virtual {p0, v0}, Lio/didomi/sdk/a5;->a(Lio/didomi/sdk/events/Event;)V

    return-void
.end method

.method public final f(Z)V
    .registers 3

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->u0()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/models/InternalPurpose;

    if-nez v0, :cond_d

    return-void

    :cond_d
    if-eqz p1, :cond_18

    invoke-virtual {p0, v0}, Lio/didomi/sdk/a5;->e(Lio/didomi/sdk/models/InternalPurpose;)V

    sget-object p1, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->d:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    invoke-virtual {p0, p1}, Lio/didomi/sdk/a5;->b(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V

    goto :goto_20

    :cond_18
    invoke-virtual {p0, v0}, Lio/didomi/sdk/a5;->b(Lio/didomi/sdk/models/InternalPurpose;)V

    sget-object p1, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->c:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    invoke-virtual {p0, p1}, Lio/didomi/sdk/a5;->b(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V

    :goto_20
    invoke-virtual {p0}, Lio/didomi/sdk/a5;->f1()V

    return-void
.end method

.method public final g(Z)V
    .registers 3

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->u0()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/models/InternalPurpose;

    if-nez v0, :cond_d

    return-void

    :cond_d
    if-eqz p1, :cond_18

    invoke-virtual {p0, v0}, Lio/didomi/sdk/a5;->a(Lio/didomi/sdk/models/InternalPurpose;)V

    sget-object p1, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->c:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    invoke-virtual {p0, p1}, Lio/didomi/sdk/a5;->c(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V

    goto :goto_20

    :cond_18
    invoke-virtual {p0, v0}, Lio/didomi/sdk/a5;->d(Lio/didomi/sdk/models/InternalPurpose;)V

    sget-object p1, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->d:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    invoke-virtual {p0, p1}, Lio/didomi/sdk/a5;->c(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V

    :goto_20
    invoke-virtual {p0}, Lio/didomi/sdk/a5;->f1()V

    return-void
.end method

.method public final n(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Lio/didomi/sdk/J6$d;
    .registers 12

    const-string v0, "category"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/didomi/sdk/a5;->f(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    move-result-object v0

    sget-object v1, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->d:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    const/4 v6, 0x1

    goto :goto_12

    :cond_10
    const/4 v0, 0x0

    const/4 v6, 0x0

    :goto_12
    new-instance v0, Lio/didomi/sdk/J6$d;

    invoke-virtual {p0, p1}, Lio/didomi/sdk/a5;->e(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v6}, Lio/didomi/sdk/l7;->b(Lio/didomi/sdk/purpose/common/model/PurposeCategory;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1}, Lio/didomi/sdk/a5;->k(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Z

    move-result v5

    const/4 v7, 0x0

    const/16 v8, 0x20

    const/4 v9, 0x0

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v9}, Lio/didomi/sdk/J6$d;-><init>(Lio/didomi/sdk/purpose/common/model/PurposeCategory;Ljava/lang/String;Ljava/lang/String;ZZIILkotlin/jvm/internal/n;)V

    return-object v0
.end method

.method public final y(Lio/didomi/sdk/models/InternalPurpose;)Z
    .registers 3

    const-string v0, "purpose"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->V()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lio/didomi/sdk/p3;->a(Ljava/util/Collection;Lio/didomi/sdk/models/InternalPurpose;)Z

    move-result v0

    if-nez v0, :cond_25

    invoke-virtual {p0, p1}, Lio/didomi/sdk/a5;->v(Lio/didomi/sdk/models/InternalPurpose;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_25

    :cond_16
    invoke-virtual {p0}, Lio/didomi/sdk/a5;->O()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lio/didomi/sdk/p3;->a(Ljava/util/Collection;Lio/didomi/sdk/models/InternalPurpose;)Z

    move-result v0

    if-nez v0, :cond_23

    invoke-virtual {p0, p1}, Lio/didomi/sdk/a5;->v(Lio/didomi/sdk/models/InternalPurpose;)Z

    :cond_23
    const/4 p1, 0x0

    goto :goto_26

    :cond_25
    :goto_25
    const/4 p1, 0x1

    :goto_26
    return p1
.end method

.method public final z(Lio/didomi/sdk/models/InternalPurpose;)Lio/didomi/sdk/J6$i;
    .registers 11

    const-string v0, "purpose"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/didomi/sdk/l7;->y(Lio/didomi/sdk/models/InternalPurpose;)Z

    move-result v5

    new-instance v0, Lio/didomi/sdk/J6$i;

    invoke-virtual {p0, p1}, Lio/didomi/sdk/a5;->k(Lio/didomi/sdk/models/InternalPurpose;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v5}, Lio/didomi/sdk/l7;->b(Lio/didomi/sdk/models/InternalPurpose;Z)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lio/didomi/sdk/J6$i;-><init>(Lio/didomi/sdk/models/InternalPurpose;Ljava/lang/String;Ljava/lang/String;ZIILkotlin/jvm/internal/n;)V

    return-object v0
.end method

.method public z1()V
    .registers 3

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->M0()Lio/didomi/sdk/G8;

    move-result-object v0

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->J()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/didomi/sdk/G8;->a(Ljava/util/Set;)V

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->M0()Lio/didomi/sdk/G8;

    move-result-object v0

    invoke-virtual {p0}, Lio/didomi/sdk/a5;->m0()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/didomi/sdk/G8;->b(Ljava/util/Set;)V

    invoke-super {p0}, Lio/didomi/sdk/a5;->z1()V

    return-void
.end method

###### Class io.didomi.drawable.C1824l7.Companion (io.didomi.sdk.l7$a)
.class public final Lio/didomi/sdk/l7$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/didomi/sdk/l7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0014\u0010\u0005\u001a\u00020\u00048\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lio/didomi/sdk/l7$a;",
        "",
        "<init>",
        "()V",
        "",
        "PURPOSE_SUBTITLE_PATTERN",
        "Ljava/lang/String;",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/n;)V
    .registers 2

    invoke-direct {p0}, Lio/didomi/sdk/l7$a;-><init>()V

    return-void
.end method
