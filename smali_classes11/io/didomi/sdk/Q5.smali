###### Class io.didomi.drawable.Q5 (io.didomi.sdk.Q5)
.class public Lio/didomi/sdk/Q5;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/didomi/sdk/Q5$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b4\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008,\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0017\u0018\u00002\u00020\u0001BY\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0015\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u0018H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0015\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u0018H\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u001bJ\u0017\u0010 \u001a\u00020\u001f2\u0006\u0010\u001e\u001a\u00020\u001cH\u0002\u00a2\u0006\u0004\u0008 \u0010!J\u0017\u0010$\u001a\u00020\u001f2\u0006\u0010#\u001a\u00020\"H\u0002\u00a2\u0006\u0004\u0008$\u0010%J\u0017\u0010 \u001a\u00020\u001f2\u0006\u0010#\u001a\u00020\"H\u0002\u00a2\u0006\u0004\u0008 \u0010%J\u000f\u0010\'\u001a\u00020&H\u0002\u00a2\u0006\u0004\u0008\'\u0010(J\u001d\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u00182\u0006\u0010#\u001a\u00020\"H\u0002\u00a2\u0006\u0004\u0008)\u0010*J\u0019\u0010,\u001a\u0004\u0018\u00010\u001c2\u0006\u0010+\u001a\u00020\"H\u0002\u00a2\u0006\u0004\u0008,\u0010-J\u0017\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001e\u001a\u00020\u001cH\u0002\u00a2\u0006\u0004\u0008\u001a\u0010.J\u0017\u0010$\u001a\u00020/2\u0006\u0010\u001e\u001a\u00020\u001cH\u0002\u00a2\u0006\u0004\u0008$\u00100J\u0017\u00101\u001a\u00020\u00192\u0006\u0010#\u001a\u00020\"H\u0002\u00a2\u0006\u0004\u00081\u00102J\u001f\u0010\u001a\u001a\u00020&2\u0006\u0010\u001e\u001a\u00020\u001c2\u0006\u0010#\u001a\u00020\"H\u0002\u00a2\u0006\u0004\u0008\u001a\u00103J\u0015\u00104\u001a\u00020\u001f2\u0006\u0010#\u001a\u00020\"\u00a2\u0006\u0004\u00084\u0010%J\u001b\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u000206052\u0006\u0010#\u001a\u00020\"\u00a2\u0006\u0004\u0008\u001a\u0010*J\u0013\u0010 \u001a\u0008\u0012\u0004\u0012\u00020605\u00a2\u0006\u0004\u0008 \u0010\u001bJ\u0015\u00107\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u0018H\u0016\u00a2\u0006\u0004\u00087\u0010\u001bJ\u0015\u0010\u001a\u001a\u00020&2\u0006\u00109\u001a\u000208\u00a2\u0006\u0004\u0008\u001a\u0010:J\u0017\u0010 \u001a\u0004\u0018\u00010\u001c2\u0006\u0010;\u001a\u00020\u001f\u00a2\u0006\u0004\u0008 \u0010<J\u0017\u0010\u001a\u001a\u0004\u0018\u00010\"2\u0006\u0010;\u001a\u00020\u001f\u00a2\u0006\u0004\u0008\u001a\u0010=J\u0015\u0010\u001a\u001a\u00020>2\u0006\u0010?\u001a\u00020>\u00a2\u0006\u0004\u0008\u001a\u0010@J\u0015\u0010B\u001a\u00020&2\u0006\u0010A\u001a\u00020\"\u00a2\u0006\u0004\u0008B\u0010CJ\u0015\u0010D\u001a\u00020/2\u0006\u0010#\u001a\u00020\"\u00a2\u0006\u0004\u0008D\u0010EJ\u0015\u0010G\u001a\u00020&2\u0006\u0010F\u001a\u00020\"\u00a2\u0006\u0004\u0008G\u0010CJ\r\u0010H\u001a\u00020&\u00a2\u0006\u0004\u0008H\u0010(J\u001d\u0010\u001a\u001a\u00020&2\u0006\u0010\u001e\u001a\u00020\u001c2\u0006\u0010I\u001a\u00020/\u00a2\u0006\u0004\u0008\u001a\u0010JJ\u001d\u0010\u001a\u001a\u00020&2\u0006\u0010#\u001a\u00020\"2\u0006\u0010I\u001a\u00020/\u00a2\u0006\u0004\u0008\u001a\u0010KJ\r\u0010L\u001a\u00020&\u00a2\u0006\u0004\u0008L\u0010(J\r\u0010M\u001a\u00020&\u00a2\u0006\u0004\u0008M\u0010(J\r\u0010N\u001a\u00020&\u00a2\u0006\u0004\u0008N\u0010(J\r\u0010O\u001a\u00020&\u00a2\u0006\u0004\u0008O\u0010(J\r\u0010P\u001a\u00020&\u00a2\u0006\u0004\u0008P\u0010(J\r\u0010Q\u001a\u00020&\u00a2\u0006\u0004\u0008Q\u0010(R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010RR\u001a\u0010\u0005\u001a\u00020\u00048\u0004X\u0084\u0004\u00a2\u0006\u000c\n\u0004\u0008 \u0010S\u001a\u0004\u0008,\u0010TR\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008$\u0010UR\u0014\u0010\t\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008D\u0010VR\u001a\u0010\u000b\u001a\u00020\n8\u0004X\u0084\u0004\u00a2\u0006\u000c\n\u0004\u00084\u0010W\u001a\u0004\u0008X\u0010YR\u001a\u0010\r\u001a\u00020\u000c8\u0004X\u0084\u0004\u00a2\u0006\u000c\n\u0004\u00081\u0010Z\u001a\u0004\u0008[\u0010\\R\u0017\u0010\u000f\u001a\u00020\u000e8\u0006\u00a2\u0006\u000c\n\u0004\u0008)\u0010]\u001a\u0004\u0008^\u0010_R\u0017\u0010\u0011\u001a\u00020\u00108\u0006\u00a2\u0006\u000c\n\u0004\u0008,\u0010`\u001a\u0004\u0008a\u0010bR\u0017\u0010\u0013\u001a\u00020\u00128\u0006\u00a2\u0006\u000c\n\u0004\u0008G\u0010c\u001a\u0004\u0008G\u0010dR\u0014\u0010\u0015\u001a\u00020\u00148\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008B\u0010eR\u001c\u0010h\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008f\u0010gR\u001c\u0010j\u001a\u0008\u0012\u0004\u0012\u00020\"0\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008i\u0010gR\u001f\u0010F\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\"0k8\u0006\u00a2\u0006\u000c\n\u0004\u0008l\u0010m\u001a\u0004\u0008l\u0010nR\u001d\u0010p\u001a\u0008\u0012\u0004\u0012\u00020/0k8\u0006\u00a2\u0006\u000c\n\u0004\u0008o\u0010m\u001a\u0004\u0008o\u0010nR\u001d\u0010u\u001a\u0004\u0018\u00010q8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008r\u0010s\u001a\u0004\u0008r\u0010tR\u0018\u0010y\u001a\u0004\u0018\u00010v8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008w\u0010xR\u0018\u0010{\u001a\u0004\u0018\u00010v8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008z\u0010xR\u001a\u0010|\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u00188BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008)\u0010\u001bR\u0014\u0010~\u001a\u00020\u001f8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008$\u0010}R\u001a\u0010\u007f\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u00188BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u00081\u0010\u001bR\u0017\u0010\u0082\u0001\u001a\u00030\u0080\u00018BX\u0082\u0004\u00a2\u0006\u0007\u001a\u0005\u0008w\u0010\u0081\u0001R\u0016\u0010\u0084\u0001\u001a\u00020\u001f8BX\u0082\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u0083\u0001\u0010}R\u0015\u0010\u0085\u0001\u001a\u00020\u001f8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008B\u0010}R\u0012\u0010\u0086\u0001\u001a\u00020\u001f8F\u00a2\u0006\u0006\u001a\u0004\u0008f\u0010}R\u0012\u0010\u0087\u0001\u001a\u00020\u001f8F\u00a2\u0006\u0006\u001a\u0004\u0008z\u0010}R\u0012\u0010\u0088\u0001\u001a\u00020\u001f8F\u00a2\u0006\u0006\u001a\u0004\u0008D\u0010}R\u0012\u0010\u0089\u0001\u001a\u00020\u001f8F\u00a2\u0006\u0006\u001a\u0004\u00084\u0010}R\u0012\u0010\u008a\u0001\u001a\u00020\u001f8F\u00a2\u0006\u0006\u001a\u0004\u0008i\u0010}\u00a8\u0006\u008b\u0001"
    }
    d2 = {
        "Lio/didomi/sdk/Q5;",
        "Landroidx/lifecycle/ViewModel;",
        "Lio/didomi/sdk/apiEvents/b;",
        "apiEventsRepository",
        "Lio/didomi/sdk/H;",
        "configurationRepository",
        "Lio/didomi/sdk/V;",
        "consentRepository",
        "Lio/didomi/sdk/M2;",
        "eventsRepository",
        "Lio/didomi/sdk/v3;",
        "languagesHelper",
        "Lio/didomi/sdk/G8;",
        "userChoicesInfoProvider",
        "Lio/didomi/sdk/D8;",
        "uiProvider",
        "Lio/didomi/sdk/V8;",
        "vendorRepository",
        "Lio/didomi/sdk/C3;",
        "logoProvider",
        "Lio/didomi/sdk/P8;",
        "userStatusRepository",
        "<init>",
        "(Lio/didomi/sdk/apiEvents/b;Lio/didomi/sdk/H;Lio/didomi/sdk/V;Lio/didomi/sdk/M2;Lio/didomi/sdk/v3;Lio/didomi/sdk/G8;Lio/didomi/sdk/D8;Lio/didomi/sdk/V8;Lio/didomi/sdk/C3;Lio/didomi/sdk/P8;)V",
        "",
        "Lio/didomi/sdk/a4;",
        "a",
        "()Ljava/util/List;",
        "Lio/didomi/sdk/models/InternalPurpose;",
        "z",
        "personalData",
        "",
        "b",
        "(Lio/didomi/sdk/models/InternalPurpose;)Ljava/lang/String;",
        "Lio/didomi/sdk/purpose/common/model/PurposeCategory;",
        "category",
        "c",
        "(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Ljava/lang/String;",
        "",
        "B",
        "()V",
        "g",
        "(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Ljava/util/List;",
        "purposeCategory",
        "h",
        "(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Lio/didomi/sdk/models/InternalPurpose;",
        "(Lio/didomi/sdk/models/InternalPurpose;)Lio/didomi/sdk/a4;",
        "Lio/didomi/sdk/view/mobile/DidomiToggle$b;",
        "(Lio/didomi/sdk/models/InternalPurpose;)Lio/didomi/sdk/view/mobile/DidomiToggle$b;",
        "f",
        "(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Lio/didomi/sdk/a4;",
        "(Lio/didomi/sdk/models/InternalPurpose;Lio/didomi/sdk/purpose/common/model/PurposeCategory;)V",
        "e",
        "",
        "Lio/didomi/sdk/W3;",
        "A",
        "Lio/didomi/sdk/events/Event;",
        "event",
        "(Lio/didomi/sdk/events/Event;)V",
        "id",
        "(Ljava/lang/String;)Lio/didomi/sdk/models/InternalPurpose;",
        "(Ljava/lang/String;)Lio/didomi/sdk/purpose/common/model/PurposeCategory;",
        "",
        "isMainScreen",
        "(Z)Z",
        "item",
        "j",
        "(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)V",
        "d",
        "(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Lio/didomi/sdk/view/mobile/DidomiToggle$b;",
        "selectedCategory",
        "i",
        "v",
        "state",
        "(Lio/didomi/sdk/models/InternalPurpose;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V",
        "(Lio/didomi/sdk/purpose/common/model/PurposeCategory;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V",
        "w",
        "C",
        "y",
        "x",
        "u",
        "t",
        "Lio/didomi/sdk/apiEvents/b;",
        "Lio/didomi/sdk/H;",
        "()Lio/didomi/sdk/H;",
        "Lio/didomi/sdk/V;",
        "Lio/didomi/sdk/M2;",
        "Lio/didomi/sdk/v3;",
        "getLanguagesHelper",
        "()Lio/didomi/sdk/v3;",
        "Lio/didomi/sdk/G8;",
        "getUserChoicesInfoProvider",
        "()Lio/didomi/sdk/G8;",
        "Lio/didomi/sdk/D8;",
        "s",
        "()Lio/didomi/sdk/D8;",
        "Lio/didomi/sdk/V8;",
        "getVendorRepository",
        "()Lio/didomi/sdk/V8;",
        "Lio/didomi/sdk/C3;",
        "()Lio/didomi/sdk/C3;",
        "Lio/didomi/sdk/P8;",
        "k",
        "Ljava/util/List;",
        "requiredPersonalData",
        "l",
        "requiredCategories",
        "Landroidx/lifecycle/MutableLiveData;",
        "m",
        "Landroidx/lifecycle/MutableLiveData;",
        "()Landroidx/lifecycle/MutableLiveData;",
        "n",
        "selectedCategoryState",
        "Lio/didomi/sdk/S5;",
        "o",
        "Lkotlin/Lazy;",
        "()Lio/didomi/sdk/S5;",
        "spiContent",
        "Lio/didomi/sdk/m3;",
        "p",
        "Lio/didomi/sdk/m3;",
        "spiInitialPurposesHolder",
        "q",
        "categoryInitialPurposesHolder",
        "accessibilityStateDescription",
        "()Ljava/lang/String;",
        "accessibilityActionDescription",
        "accessibilityStateActionDescription",
        "Landroid/text/Spanned;",
        "()Landroid/text/Spanned;",
        "spiContentDescription",
        "r",
        "spiSectionTitle",
        "noSpiContentLabel",
        "saveAndCloseButtonTitle",
        "spiContentTitle",
        "accessibilityCloseDescription",
        "accessibilityClosePurposesActionDescription",
        "saveButtonLabel",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private final a:Lio/didomi/sdk/apiEvents/b;

.field private final b:Lio/didomi/sdk/H;

.field private final c:Lio/didomi/sdk/V;

.field private final d:Lio/didomi/sdk/M2;

.field private final e:Lio/didomi/sdk/v3;

.field private final f:Lio/didomi/sdk/G8;

.field private final g:Lio/didomi/sdk/D8;

.field private final h:Lio/didomi/sdk/V8;

.field private final i:Lio/didomi/sdk/C3;

.field private final j:Lio/didomi/sdk/P8;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/didomi/sdk/purpose/common/model/PurposeCategory;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lio/didomi/sdk/purpose/common/model/PurposeCategory;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lio/didomi/sdk/view/mobile/DidomiToggle$b;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Lkotlin/i;

.field private p:Lio/didomi/sdk/m3;

.field private q:Lio/didomi/sdk/m3;


# direct methods
.method public constructor <init>(Lio/didomi/sdk/apiEvents/b;Lio/didomi/sdk/H;Lio/didomi/sdk/V;Lio/didomi/sdk/M2;Lio/didomi/sdk/v3;Lio/didomi/sdk/G8;Lio/didomi/sdk/D8;Lio/didomi/sdk/V8;Lio/didomi/sdk/C3;Lio/didomi/sdk/P8;)V
    .registers 12

    const-string v0, "apiEventsRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configurationRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consentRepository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventsRepository"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "languagesHelper"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userChoicesInfoProvider"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiProvider"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vendorRepository"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logoProvider"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userStatusRepository"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/Q5;->a:Lio/didomi/sdk/apiEvents/b;

    iput-object p2, p0, Lio/didomi/sdk/Q5;->b:Lio/didomi/sdk/H;

    iput-object p3, p0, Lio/didomi/sdk/Q5;->c:Lio/didomi/sdk/V;

    iput-object p4, p0, Lio/didomi/sdk/Q5;->d:Lio/didomi/sdk/M2;

    iput-object p5, p0, Lio/didomi/sdk/Q5;->e:Lio/didomi/sdk/v3;

    iput-object p6, p0, Lio/didomi/sdk/Q5;->f:Lio/didomi/sdk/G8;

    iput-object p7, p0, Lio/didomi/sdk/Q5;->g:Lio/didomi/sdk/D8;

    iput-object p8, p0, Lio/didomi/sdk/Q5;->h:Lio/didomi/sdk/V8;

    iput-object p9, p0, Lio/didomi/sdk/Q5;->i:Lio/didomi/sdk/C3;

    iput-object p10, p0, Lio/didomi/sdk/Q5;->j:Lio/didomi/sdk/P8;

    invoke-static {p8}, Lio/didomi/sdk/W8;->b(Lio/didomi/sdk/V8;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/Q5;->k:Ljava/util/List;

    invoke-virtual {p8}, Lio/didomi/sdk/V8;->u()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/Q5;->l:Ljava/util/List;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/Q5;->m:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/Q5;->n:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Lio/didomi/sdk/Q5$c;

    invoke-direct {p1, p0}, Lio/didomi/sdk/Q5$c;-><init>(Lio/didomi/sdk/Q5;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/Q5;->o:Lkotlin/i;

    return-void
.end method

.method private final B()V
    .registers 16

    iget-object v0, p0, Lio/didomi/sdk/Q5;->a:Lio/didomi/sdk/apiEvents/b;

    invoke-virtual {v0}, Lio/didomi/sdk/apiEvents/b;->i()V

    iget-object v1, p0, Lio/didomi/sdk/Q5;->c:Lio/didomi/sdk/V;

    iget-object v0, p0, Lio/didomi/sdk/Q5;->f:Lio/didomi/sdk/G8;

    invoke-virtual {v0}, Lio/didomi/sdk/G8;->f()Ljava/util/Set;

    move-result-object v2

    iget-object v0, p0, Lio/didomi/sdk/Q5;->f:Lio/didomi/sdk/G8;

    invoke-virtual {v0}, Lio/didomi/sdk/G8;->b()Ljava/util/Set;

    move-result-object v3

    iget-object v0, p0, Lio/didomi/sdk/Q5;->f:Lio/didomi/sdk/G8;

    invoke-virtual {v0}, Lio/didomi/sdk/G8;->h()Ljava/util/Set;

    move-result-object v4

    iget-object v0, p0, Lio/didomi/sdk/Q5;->f:Lio/didomi/sdk/G8;

    invoke-virtual {v0}, Lio/didomi/sdk/G8;->d()Ljava/util/Set;

    move-result-object v5

    iget-object v0, p0, Lio/didomi/sdk/Q5;->f:Lio/didomi/sdk/G8;

    invoke-virtual {v0}, Lio/didomi/sdk/G8;->g()Ljava/util/Set;

    move-result-object v6

    iget-object v0, p0, Lio/didomi/sdk/Q5;->f:Lio/didomi/sdk/G8;

    invoke-virtual {v0}, Lio/didomi/sdk/G8;->c()Ljava/util/Set;

    move-result-object v7

    iget-object v0, p0, Lio/didomi/sdk/Q5;->f:Lio/didomi/sdk/G8;

    invoke-virtual {v0}, Lio/didomi/sdk/G8;->i()Ljava/util/Set;

    move-result-object v8

    iget-object v0, p0, Lio/didomi/sdk/Q5;->f:Lio/didomi/sdk/G8;

    invoke-virtual {v0}, Lio/didomi/sdk/G8;->e()Ljava/util/Set;

    move-result-object v9

    iget-object v12, p0, Lio/didomi/sdk/Q5;->a:Lio/didomi/sdk/apiEvents/b;

    iget-object v13, p0, Lio/didomi/sdk/Q5;->d:Lio/didomi/sdk/M2;

    iget-object v14, p0, Lio/didomi/sdk/Q5;->j:Lio/didomi/sdk/P8;

    const/4 v10, 0x1

    const-string v11, "click"

    invoke-virtual/range {v1 .. v14}, Lio/didomi/sdk/V;->a(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ZLjava/lang/String;Lio/didomi/sdk/apiEvents/b;Lio/didomi/sdk/M2;Lio/didomi/sdk/P8;)Z

    return-void
.end method

.method private final a(Lio/didomi/sdk/models/InternalPurpose;)Lio/didomi/sdk/a4;
    .registers 15

    new-instance v12, Lio/didomi/sdk/a4;

    invoke-virtual {p1}, Lio/didomi/sdk/models/InternalPurpose;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v1, v0

    sget-object v3, Lio/didomi/sdk/W3$a;->e:Lio/didomi/sdk/W3$a;

    invoke-virtual {p1}, Lio/didomi/sdk/models/InternalPurpose;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1}, Lio/didomi/sdk/Q5;->b(Lio/didomi/sdk/models/InternalPurpose;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1}, Lio/didomi/sdk/Q5;->c(Lio/didomi/sdk/models/InternalPurpose;)Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    move-result-object v8

    invoke-direct {p0}, Lio/didomi/sdk/Q5;->f()Ljava/util/List;

    move-result-object v9

    invoke-direct {p0}, Lio/didomi/sdk/Q5;->g()Ljava/util/List;

    move-result-object v10

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lio/didomi/sdk/a4;-><init>(JLio/didomi/sdk/W3$a;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/didomi/sdk/view/mobile/DidomiToggle$b;Ljava/util/List;Ljava/util/List;Z)V

    return-object v12
.end method

.method private final a()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/didomi/sdk/a4;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iget-object v2, p0, Lio/didomi/sdk/Q5;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_54

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/didomi/sdk/purpose/common/model/PurposeCategory;

    const/4 v4, 0x0

    invoke-static {v3}, Lio/didomi/sdk/t4;->a(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type;

    move-result-object v5

    sget-object v6, Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type;->Purpose:Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type;

    if-ne v5, v6, :cond_3b

    invoke-virtual {v3}, Lio/didomi/sdk/purpose/common/model/PurposeCategory;->getPurposeId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lio/didomi/sdk/Q5;->b(Ljava/lang/String;)Lio/didomi/sdk/models/InternalPurpose;

    move-result-object v5

    if-eqz v5, :cond_4e

    invoke-direct {p0, v5}, Lio/didomi/sdk/Q5;->a(Lio/didomi/sdk/models/InternalPurpose;)Lio/didomi/sdk/a4;

    move-result-object v4

    invoke-virtual {v3}, Lio/didomi/sdk/purpose/common/model/PurposeCategory;->getPurposeId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4e

    :cond_3b
    invoke-direct {p0, v3}, Lio/didomi/sdk/Q5;->g(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_4e

    invoke-interface {v1, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0, v3}, Lio/didomi/sdk/Q5;->f(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Lio/didomi/sdk/a4;

    move-result-object v4

    :cond_4e
    :goto_4e
    if-eqz v4, :cond_10

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_54
    invoke-direct {p0}, Lio/didomi/sdk/Q5;->z()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5c
    :goto_5c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/didomi/sdk/models/InternalPurpose;

    invoke-virtual {v3}, Lio/didomi/sdk/models/InternalPurpose;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5c

    invoke-direct {p0, v3}, Lio/didomi/sdk/Q5;->a(Lio/didomi/sdk/models/InternalPurpose;)Lio/didomi/sdk/a4;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5c

    :cond_7a
    invoke-static {v0}, Lkotlin/collections/p;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final a(Lio/didomi/sdk/models/InternalPurpose;Lio/didomi/sdk/purpose/common/model/PurposeCategory;)V
    .registers 5

    invoke-virtual {p1}, Lio/didomi/sdk/models/InternalPurpose;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/g;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1d

    invoke-virtual {p1}, Lio/didomi/sdk/models/InternalPurpose;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lio/didomi/sdk/purpose/common/model/PurposeCategory;->getPurposeId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p1, p2}, Lio/didomi/sdk/models/InternalPurpose;->setCategory(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)V

    :cond_1d
    return-void
.end method

.method private final b(Lio/didomi/sdk/models/InternalPurpose;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p1}, Lio/didomi/sdk/models/InternalPurpose;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final b(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lio/didomi/sdk/Q5;->e:Lio/didomi/sdk/v3;

    invoke-virtual {p1}, Lio/didomi/sdk/purpose/common/model/PurposeCategory;->getDescription()Ljava/util/Map;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/util/Map;Lio/didomi/sdk/W5;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final c(Lio/didomi/sdk/models/InternalPurpose;)Lio/didomi/sdk/view/mobile/DidomiToggle$b;
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/Q5;->f:Lio/didomi/sdk/G8;

    invoke-virtual {v0}, Lio/didomi/sdk/G8;->f()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    sget-object p1, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->d:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    goto :goto_11

    :cond_f
    sget-object p1, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->c:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    :goto_11
    return-object p1
.end method

.method private final c()Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Lio/didomi/sdk/Q5;->e:Lio/didomi/sdk/v3;

    const-string v1, "know_more_about_this_purpose"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final c(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lio/didomi/sdk/Q5;->e:Lio/didomi/sdk/v3;

    invoke-virtual {p1}, Lio/didomi/sdk/purpose/common/model/PurposeCategory;->getName()Ljava/util/Map;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/util/Map;Lio/didomi/sdk/W5;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final f(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Lio/didomi/sdk/a4;
    .registers 15

    new-instance v12, Lio/didomi/sdk/a4;

    invoke-virtual {p1}, Lio/didomi/sdk/purpose/common/model/PurposeCategory;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v1, v0

    sget-object v3, Lio/didomi/sdk/W3$a;->a:Lio/didomi/sdk/W3$a;

    invoke-virtual {p1}, Lio/didomi/sdk/purpose/common/model/PurposeCategory;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1}, Lio/didomi/sdk/Q5;->c(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0}, Lio/didomi/sdk/Q5;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, p1}, Lio/didomi/sdk/Q5;->d(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    move-result-object v8

    invoke-direct {p0}, Lio/didomi/sdk/Q5;->f()Ljava/util/List;

    move-result-object v9

    invoke-direct {p0}, Lio/didomi/sdk/Q5;->g()Ljava/util/List;

    move-result-object v10

    const/4 v4, 0x1

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lio/didomi/sdk/a4;-><init>(JLio/didomi/sdk/W3$a;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/didomi/sdk/view/mobile/DidomiToggle$b;Ljava/util/List;Ljava/util/List;Z)V

    return-object v12
.end method

.method private final f()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/Q5;->e:Lio/didomi/sdk/v3;

    const-string v1, "enable_this_purpose"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/didomi/sdk/Q5;->e:Lio/didomi/sdk/v3;

    const-string v2, "disable_this_purpose"

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/didomi/sdk/Q5;->e:Lio/didomi/sdk/v3;

    const-string v3, "enable_this_purpose"

    const/4 v6, 0x0

    const/16 v7, 0xe

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    invoke-static {v3}, Lkotlin/collections/p;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final g()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/Q5;->e:Lio/didomi/sdk/v3;

    const-string v1, "disabled"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/didomi/sdk/Q5;->e:Lio/didomi/sdk/v3;

    const-string v2, "enabled"

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/didomi/sdk/Q5;->e:Lio/didomi/sdk/v3;

    const-string v3, "unspecified"

    const/4 v6, 0x0

    const/16 v7, 0xe

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    invoke-static {v3}, Lkotlin/collections/p;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final g(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/purpose/common/model/PurposeCategory;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lio/didomi/sdk/purpose/common/model/PurposeCategory;->getChildren()Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/didomi/sdk/purpose/common/model/PurposeCategory;

    invoke-direct {p0, v1}, Lio/didomi/sdk/Q5;->h(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Lio/didomi/sdk/models/InternalPurpose;

    move-result-object v1

    if-eqz v1, :cond_24

    invoke-virtual {v1}, Lio/didomi/sdk/models/InternalPurpose;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_25

    :cond_24
    const/4 v1, 0x0

    :goto_25
    if-eqz v1, :cond_d

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_2b
    return-object v0
.end method

.method private final h(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Lio/didomi/sdk/models/InternalPurpose;
    .registers 4

    invoke-static {p1}, Lio/didomi/sdk/t4;->a(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type;

    move-result-object v0

    sget-object v1, Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type;->Purpose:Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type;

    if-ne v0, v1, :cond_11

    invoke-virtual {p1}, Lio/didomi/sdk/purpose/common/model/PurposeCategory;->getPurposeId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/didomi/sdk/Q5;->b(Ljava/lang/String;)Lio/didomi/sdk/models/InternalPurpose;

    move-result-object p1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    return-object p1
.end method

.method private final j()Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Lio/didomi/sdk/Q5;->e:Lio/didomi/sdk/v3;

    const-string v1, "no_sensitive_personal_info"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final o()Lio/didomi/sdk/S5;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/Q5;->o:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/S5;

    return-object v0
.end method

.method private final p()Landroid/text/Spanned;
    .registers 5

    iget-object v0, p0, Lio/didomi/sdk/Q5;->e:Lio/didomi/sdk/v3;

    invoke-direct {p0}, Lio/didomi/sdk/Q5;->o()Lio/didomi/sdk/S5;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lio/didomi/sdk/S5;->b()Ljava/util/Map;

    move-result-object v1

    goto :goto_f

    :cond_e
    move-object v1, v2

    :goto_f
    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/util/Map;Lio/didomi/sdk/W5;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/didomi/sdk/V5;->k(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method private final r()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lio/didomi/sdk/Q5;->e:Lio/didomi/sdk/v3;

    invoke-direct {p0}, Lio/didomi/sdk/Q5;->o()Lio/didomi/sdk/S5;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lio/didomi/sdk/S5;->c()Ljava/util/Map;

    move-result-object v1

    goto :goto_f

    :cond_e
    move-object v1, v2

    :goto_f
    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/util/Map;Lio/didomi/sdk/W5;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final z()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/Q5;->k:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/p;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_15

    new-instance v1, Lio/didomi/sdk/Q5$b;

    invoke-direct {v1}, Lio/didomi/sdk/Q5$b;-><init>()V

    invoke-static {v0, v1}, Lkotlin/collections/p;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_15
    iget-object v1, p0, Lio/didomi/sdk/Q5;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1e

    return-object v0

    :cond_1e
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/didomi/sdk/models/InternalPurpose;

    iget-object v3, p0, Lio/didomi/sdk/Q5;->l:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_34
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/didomi/sdk/purpose/common/model/PurposeCategory;

    invoke-direct {p0, v2, v4}, Lio/didomi/sdk/Q5;->a(Lio/didomi/sdk/models/InternalPurpose;Lio/didomi/sdk/purpose/common/model/PurposeCategory;)V

    goto :goto_34

    :cond_44
    return-object v0
.end method


# virtual methods
.method public A()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/Q5;->h:Lio/didomi/sdk/V8;

    invoke-virtual {v0}, Lio/didomi/sdk/V8;->k()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lio/didomi/sdk/models/InternalPurpose;

    invoke-static {v3}, Lio/didomi/sdk/p3;->a(Lio/didomi/sdk/models/InternalPurpose;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_26
    iput-object v1, p0, Lio/didomi/sdk/Q5;->k:Ljava/util/List;

    invoke-direct {p0}, Lio/didomi/sdk/Q5;->z()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final C()V
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/Q5;->f:Lio/didomi/sdk/G8;

    iget-object v1, p0, Lio/didomi/sdk/Q5;->c:Lio/didomi/sdk/V;

    invoke-virtual {v1}, Lio/didomi/sdk/V;->b()Lio/didomi/sdk/consent/model/ConsentToken;

    move-result-object v1

    iget-object v2, p0, Lio/didomi/sdk/Q5;->h:Lio/didomi/sdk/V8;

    invoke-static {v0, v1, v2}, Lio/didomi/sdk/H8;->a(Lio/didomi/sdk/G8;Lio/didomi/sdk/consent/model/ConsentToken;Lio/didomi/sdk/V8;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)Lio/didomi/sdk/purpose/common/model/PurposeCategory;
    .registers 5

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/Q5;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lio/didomi/sdk/purpose/common/model/PurposeCategory;

    invoke-virtual {v2}, Lio/didomi/sdk/purpose/common/model/PurposeCategory;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    :goto_24
    check-cast v1, Lio/didomi/sdk/purpose/common/model/PurposeCategory;

    return-object v1
.end method

.method public final a(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/purpose/common/model/PurposeCategory;",
            ")",
            "Ljava/util/List<",
            "Lio/didomi/sdk/W3;",
            ">;"
        }
    .end annotation

    const-string v0, "category"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lio/didomi/sdk/X3;

    invoke-direct {p0, p1}, Lio/didomi/sdk/Q5;->b(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/didomi/sdk/X3;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lio/didomi/sdk/purpose/common/model/PurposeCategory;->getChildren()Ljava/util/List;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_23
    :goto_23
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/didomi/sdk/purpose/common/model/PurposeCategory;

    invoke-direct {p0, v2}, Lio/didomi/sdk/Q5;->h(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Lio/didomi/sdk/models/InternalPurpose;

    move-result-object v2

    if-eqz v2, :cond_23

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_39
    new-instance p1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lkotlin/collections/p;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_48
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/didomi/sdk/models/InternalPurpose;

    invoke-direct {p0, v2}, Lio/didomi/sdk/Q5;->a(Lio/didomi/sdk/models/InternalPurpose;)Lio/didomi/sdk/a4;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_48

    :cond_5c
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public final a(Lio/didomi/sdk/events/Event;)V
    .registers 3

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/Q5;->d:Lio/didomi/sdk/M2;

    invoke-virtual {v0, p1}, Lio/didomi/sdk/M2;->c(Lio/didomi/sdk/events/Event;)V

    return-void
.end method

.method public final a(Lio/didomi/sdk/models/InternalPurpose;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V
    .registers 4

    const-string v0, "personalData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lio/didomi/sdk/Q5$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2b

    const/4 v0, 0x2

    if-eq p2, v0, :cond_19

    goto :goto_3c

    :cond_19
    iget-object p2, p0, Lio/didomi/sdk/Q5;->f:Lio/didomi/sdk/G8;

    invoke-virtual {p2, p1}, Lio/didomi/sdk/G8;->c(Lio/didomi/sdk/models/InternalPurpose;)V

    new-instance p2, Lio/didomi/sdk/events/PreferencesClickSPIPurposeAgreeEvent;

    invoke-virtual {p1}, Lio/didomi/sdk/models/InternalPurpose;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lio/didomi/sdk/events/PreferencesClickSPIPurposeAgreeEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lio/didomi/sdk/Q5;->a(Lio/didomi/sdk/events/Event;)V

    goto :goto_3c

    :cond_2b
    iget-object p2, p0, Lio/didomi/sdk/Q5;->f:Lio/didomi/sdk/G8;

    invoke-virtual {p2, p1}, Lio/didomi/sdk/G8;->a(Lio/didomi/sdk/models/InternalPurpose;)V

    new-instance p2, Lio/didomi/sdk/events/PreferencesClickSPIPurposeDisagreeEvent;

    invoke-virtual {p1}, Lio/didomi/sdk/models/InternalPurpose;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lio/didomi/sdk/events/PreferencesClickSPIPurposeDisagreeEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lio/didomi/sdk/Q5;->a(Lio/didomi/sdk/events/Event;)V

    :goto_3c
    return-void
.end method

.method public final a(Lio/didomi/sdk/purpose/common/model/PurposeCategory;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V
    .registers 6

    const-string v0, "category"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/didomi/sdk/purpose/common/model/PurposeCategory;->getChildren()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_17
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/didomi/sdk/purpose/common/model/PurposeCategory;

    invoke-direct {p0, v2}, Lio/didomi/sdk/Q5;->h(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Lio/didomi/sdk/models/InternalPurpose;

    move-result-object v2

    if-eqz v2, :cond_17

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_2d
    sget-object v0, Lio/didomi/sdk/Q5$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_5f

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3c

    goto :goto_81

    :cond_3c
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_40
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/models/InternalPurpose;

    iget-object v1, p0, Lio/didomi/sdk/Q5;->f:Lio/didomi/sdk/G8;

    invoke-virtual {v1, v0}, Lio/didomi/sdk/G8;->c(Lio/didomi/sdk/models/InternalPurpose;)V

    goto :goto_40

    :cond_52
    new-instance p2, Lio/didomi/sdk/events/PreferencesClickSPICategoryAgreeEvent;

    invoke-virtual {p1}, Lio/didomi/sdk/purpose/common/model/PurposeCategory;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lio/didomi/sdk/events/PreferencesClickSPICategoryAgreeEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lio/didomi/sdk/Q5;->a(Lio/didomi/sdk/events/Event;)V

    goto :goto_81

    :cond_5f
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_63
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_75

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/models/InternalPurpose;

    iget-object v1, p0, Lio/didomi/sdk/Q5;->f:Lio/didomi/sdk/G8;

    invoke-virtual {v1, v0}, Lio/didomi/sdk/G8;->a(Lio/didomi/sdk/models/InternalPurpose;)V

    goto :goto_63

    :cond_75
    new-instance p2, Lio/didomi/sdk/events/PreferencesClickSPICategoryDisagreeEvent;

    invoke-virtual {p1}, Lio/didomi/sdk/purpose/common/model/PurposeCategory;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lio/didomi/sdk/events/PreferencesClickSPICategoryDisagreeEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lio/didomi/sdk/Q5;->a(Lio/didomi/sdk/events/Event;)V

    :goto_81
    return-void
.end method

.method public final a(Z)Z
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/Q5;->b:Lio/didomi/sdk/H;

    invoke-virtual {v0}, Lio/didomi/sdk/H;->b()Lio/didomi/sdk/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/k;->a()Lio/didomi/sdk/k$a;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/k$a;->l()Z

    move-result v1

    if-nez v1, :cond_1f

    if-eqz p1, :cond_1d

    invoke-virtual {v0}, Lio/didomi/sdk/k;->f()Lio/didomi/sdk/k$g;

    move-result-object p1

    invoke-virtual {p1}, Lio/didomi/sdk/k$g;->g()Z

    move-result p1

    if-eqz p1, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p1, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 p1, 0x1

    :goto_20
    return p1
.end method

.method public final b(Ljava/lang/String;)Lio/didomi/sdk/models/InternalPurpose;
    .registers 5

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/Q5;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lio/didomi/sdk/models/InternalPurpose;

    invoke-virtual {v2}, Lio/didomi/sdk/models/InternalPurpose;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    :goto_24
    check-cast v1, Lio/didomi/sdk/models/InternalPurpose;

    return-object v1
.end method

.method public final b()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/didomi/sdk/W3;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lio/didomi/sdk/Q5;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1c

    new-instance v1, Lio/didomi/sdk/Y3;

    invoke-direct {p0}, Lio/didomi/sdk/Q5;->j()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/didomi/sdk/Y3;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    :cond_1c
    new-instance v2, Lio/didomi/sdk/Z3;

    invoke-direct {p0}, Lio/didomi/sdk/Q5;->p()Landroid/text/Spanned;

    move-result-object v3

    invoke-direct {p0}, Lio/didomi/sdk/Q5;->r()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lio/didomi/sdk/Z3;-><init>(Landroid/text/Spanned;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_2f
    return-object v0
.end method

.method public final d(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Lio/didomi/sdk/view/mobile/DidomiToggle$b;
    .registers 4

    const-string v0, "category"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/didomi/sdk/purpose/common/model/PurposeCategory;->getChildren()Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_12
    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/didomi/sdk/purpose/common/model/PurposeCategory;

    invoke-direct {p0, v1}, Lio/didomi/sdk/Q5;->h(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Lio/didomi/sdk/models/InternalPurpose;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_28
    new-instance p1, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lkotlin/collections/p;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/didomi/sdk/models/InternalPurpose;

    invoke-direct {p0, v1}, Lio/didomi/sdk/Q5;->c(Lio/didomi/sdk/models/InternalPurpose;)Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_37

    :cond_4b
    invoke-static {p1}, Lkotlin/collections/p;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5d

    invoke-static {p1}, Lkotlin/collections/p;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    goto :goto_5f

    :cond_5d
    sget-object p1, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->e:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    :goto_5f
    return-object p1
.end method

.method public final d()Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Lio/didomi/sdk/Q5;->e:Lio/didomi/sdk/v3;

    const-string v1, "close"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Lio/didomi/sdk/Q5;->e:Lio/didomi/sdk/v3;

    const-string v1, "close_purpose_view"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Ljava/lang/String;
    .registers 5

    const-string v0, "category"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/Q5;->e:Lio/didomi/sdk/v3;

    invoke-virtual {p1}, Lio/didomi/sdk/purpose/common/model/PurposeCategory;->getName()Ljava/util/Map;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/util/Map;Lio/didomi/sdk/W5;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final h()Lio/didomi/sdk/H;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/Q5;->b:Lio/didomi/sdk/H;

    return-object v0
.end method

.method public final i()Lio/didomi/sdk/C3;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/Q5;->i:Lio/didomi/sdk/C3;

    return-object v0
.end method

.method public final i(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)V
    .registers 3

    const-string v0, "selectedCategory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/Q5;->n:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p1}, Lio/didomi/sdk/Q5;->d(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final j(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)V
    .registers 3

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/Q5;->m:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final k()Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Lio/didomi/sdk/Q5;->e:Lio/didomi/sdk/v3;

    const-string v1, "save_11a80ec3"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lio/didomi/sdk/Q5;->e:Lio/didomi/sdk/v3;

    iget-object v1, p0, Lio/didomi/sdk/Q5;->b:Lio/didomi/sdk/H;

    invoke-virtual {v1}, Lio/didomi/sdk/H;->b()Lio/didomi/sdk/k;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/k;->f()Lio/didomi/sdk/k$g;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/k$g;->b()Lio/didomi/sdk/k$g$a;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/k$g$a;->g()Ljava/util/Map;

    move-result-object v1

    const-string v2, "save_11a80ec3"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/util/Map;Ljava/lang/String;Lio/didomi/sdk/W5;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final m()Landroidx/lifecycle/MutableLiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lio/didomi/sdk/purpose/common/model/PurposeCategory;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/Q5;->m:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final n()Landroidx/lifecycle/MutableLiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lio/didomi/sdk/view/mobile/DidomiToggle$b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/Q5;->n:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final q()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lio/didomi/sdk/Q5;->e:Lio/didomi/sdk/v3;

    invoke-direct {p0}, Lio/didomi/sdk/Q5;->o()Lio/didomi/sdk/S5;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lio/didomi/sdk/S5;->d()Ljava/util/Map;

    move-result-object v1

    goto :goto_f

    :cond_e
    move-object v1, v2

    :goto_f
    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/util/Map;Lio/didomi/sdk/W5;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final s()Lio/didomi/sdk/D8;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/Q5;->g:Lio/didomi/sdk/D8;

    return-object v0
.end method

.method public final t()V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/Q5;->q:Lio/didomi/sdk/m3;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lio/didomi/sdk/Q5;->f:Lio/didomi/sdk/G8;

    invoke-static {v0, v1}, Lio/didomi/sdk/n3;->a(Lio/didomi/sdk/m3;Lio/didomi/sdk/G8;)V

    :cond_9
    iget-object v0, p0, Lio/didomi/sdk/Q5;->m:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final u()V
    .registers 3

    sget-object v0, Lio/didomi/sdk/m3;->e:Lio/didomi/sdk/m3$a;

    iget-object v1, p0, Lio/didomi/sdk/Q5;->f:Lio/didomi/sdk/G8;

    invoke-virtual {v0, v1}, Lio/didomi/sdk/m3$a;->a(Lio/didomi/sdk/G8;)Lio/didomi/sdk/m3;

    move-result-object v0

    iput-object v0, p0, Lio/didomi/sdk/Q5;->q:Lio/didomi/sdk/m3;

    return-void
.end method

.method public final v()V
    .registers 2

    invoke-direct {p0}, Lio/didomi/sdk/Q5;->B()V

    new-instance v0, Lio/didomi/sdk/events/PreferencesClickSPIPurposeSaveChoicesEvent;

    invoke-direct {v0}, Lio/didomi/sdk/events/PreferencesClickSPIPurposeSaveChoicesEvent;-><init>()V

    invoke-virtual {p0, v0}, Lio/didomi/sdk/Q5;->a(Lio/didomi/sdk/events/Event;)V

    return-void
.end method

.method public final w()V
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/Q5;->a:Lio/didomi/sdk/apiEvents/b;

    invoke-virtual {v0}, Lio/didomi/sdk/apiEvents/b;->j()V

    return-void
.end method

.method public final x()V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/Q5;->p:Lio/didomi/sdk/m3;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lio/didomi/sdk/Q5;->f:Lio/didomi/sdk/G8;

    invoke-static {v0, v1}, Lio/didomi/sdk/n3;->a(Lio/didomi/sdk/m3;Lio/didomi/sdk/G8;)V

    :cond_9
    iget-object v0, p0, Lio/didomi/sdk/Q5;->m:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final y()V
    .registers 3

    sget-object v0, Lio/didomi/sdk/m3;->e:Lio/didomi/sdk/m3$a;

    iget-object v1, p0, Lio/didomi/sdk/Q5;->f:Lio/didomi/sdk/G8;

    invoke-virtual {v0, v1}, Lio/didomi/sdk/m3$a;->a(Lio/didomi/sdk/G8;)Lio/didomi/sdk/m3;

    move-result-object v0

    iput-object v0, p0, Lio/didomi/sdk/Q5;->p:Lio/didomi/sdk/m3;

    return-void
.end method
