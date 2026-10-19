###### Class io.didomi.drawable.models.InternalPurpose (io.didomi.sdk.models.InternalPurpose)
.class public final Lio/didomi/sdk/models/InternalPurpose;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/didomi/sdk/o0;
.implements Lio/didomi/sdk/H3;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/didomi/sdk/models/InternalPurpose$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008 \n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u001d\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0087\u0008\u0018\u0000 d2\u00020\u00012\u00020\u0002:\u0001eB\u00a1\u0001\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u0012\u0010\u0008\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\t\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u000b\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\r\u0010\u0017\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\r\u0010\u0019\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u0019\u0010\u0018J\r\u0010\u001a\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u001a\u0010\u0018J\u0010\u0010\u001b\u001a\u00020\u0003H\u00c6\u0003\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0012\u0010\u001d\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0004\u0008\u001d\u0010\u001cJ\u0010\u0010\u001e\u001a\u00020\u0003H\u00c6\u0003\u00a2\u0006\u0004\u0008\u001e\u0010\u001cJ\u0010\u0010\u001f\u001a\u00020\u0003H\u00c6\u0003\u00a2\u0006\u0004\u0008\u001f\u0010\u001cJ\u0012\u0010 \u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0004\u0008 \u0010\u001cJ\u0018\u0010!\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\tH\u00c6\u0003\u00a2\u0006\u0004\u0008!\u0010\"J\u0010\u0010#\u001a\u00020\u000bH\u00c6\u0003\u00a2\u0006\u0004\u0008#\u0010\u0018J\u0010\u0010$\u001a\u00020\u000bH\u00c6\u0003\u00a2\u0006\u0004\u0008$\u0010\u0018J\u0010\u0010%\u001a\u00020\u000bH\u00c6\u0003\u00a2\u0006\u0004\u0008%\u0010\u0018J\u0010\u0010&\u001a\u00020\u000bH\u00c6\u0003\u00a2\u0006\u0004\u0008&\u0010\u0018J\u0012\u0010(\u001a\u0004\u0018\u00010\u0003H\u00c0\u0003\u00a2\u0006\u0004\u0008\'\u0010\u001cJ\u0012\u0010)\u001a\u0004\u0018\u00010\u0011H\u00c6\u0003\u00a2\u0006\u0004\u0008)\u0010*J\u0010\u0010,\u001a\u00020\u000bH\u00c0\u0003\u00a2\u0006\u0004\u0008+\u0010\u0018J\u0010\u0010.\u001a\u00020\u000bH\u00c0\u0003\u00a2\u0006\u0004\u0008-\u0010\u0018J\u00ac\u0001\u0010/\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00032\u0010\u0008\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\t2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u000b2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u000bH\u00c6\u0001\u00a2\u0006\u0004\u0008/\u00100J\u0010\u00101\u001a\u00020\u0003H\u00d6\u0001\u00a2\u0006\u0004\u00081\u0010\u001cJ\u0010\u00103\u001a\u000202H\u00d6\u0001\u00a2\u0006\u0004\u00083\u00104J\u001a\u00107\u001a\u00020\u000b2\u0008\u00106\u001a\u0004\u0018\u000105H\u00d6\u0003\u00a2\u0006\u0004\u00087\u00108J\u0010\u00109\u001a\u000202H\u00d6\u0001\u00a2\u0006\u0004\u00089\u00104J \u0010>\u001a\u00020=2\u0006\u0010;\u001a\u00020:2\u0006\u0010<\u001a\u000202H\u00d6\u0001\u00a2\u0006\u0004\u0008>\u0010?R\u001a\u0010\u0004\u001a\u00020\u00038\u0016X\u0097\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010@\u001a\u0004\u0008A\u0010\u001cR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0016X\u0097\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010@\u001a\u0004\u0008B\u0010\u001cR\"\u0010\u0006\u001a\u00020\u00038\u0016@\u0016X\u0097\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0006\u0010@\u001a\u0004\u0008C\u0010\u001c\"\u0004\u0008D\u0010ER\"\u0010\u0007\u001a\u00020\u00038\u0016@\u0016X\u0097\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0007\u0010@\u001a\u0004\u0008F\u0010\u001c\"\u0004\u0008G\u0010ER$\u0010\u0008\u001a\u0004\u0018\u00010\u00038\u0016@\u0016X\u0097\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0008\u0010@\u001a\u0004\u0008H\u0010\u001c\"\u0004\u0008I\u0010ER*\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\t8\u0016@\u0016X\u0097\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u0010J\u001a\u0004\u0008K\u0010\"\"\u0004\u0008L\u0010MR\"\u0010\u000c\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010N\u001a\u0004\u0008\u000c\u0010\u0018\"\u0004\u0008O\u0010PR\"\u0010\r\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\r\u0010N\u001a\u0004\u0008\r\u0010\u0018\"\u0004\u0008Q\u0010PR\"\u0010\u000e\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010N\u001a\u0004\u0008\u000e\u0010\u0018\"\u0004\u0008R\u0010PR\"\u0010\u000f\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010N\u001a\u0004\u0008\u000f\u0010\u0018\"\u0004\u0008S\u0010PR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u00038\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010@\u001a\u0004\u0008T\u0010\u001cR\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u00118\u0016X\u0097\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010U\u001a\u0004\u0008V\u0010*R\"\u0010\u0013\u001a\u00020\u000b8\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010N\u001a\u0004\u0008W\u0010\u0018\"\u0004\u0008X\u0010PR\"\u0010\u0014\u001a\u00020\u000b8\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010N\u001a\u0004\u0008Y\u0010\u0018\"\u0004\u0008Z\u0010PR*\u0010\\\u001a\u0004\u0018\u00010[8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0004\u0008\\\u0010]\u0012\u0004\u0008b\u0010c\u001a\u0004\u0008^\u0010_\"\u0004\u0008`\u0010a\u00a8\u0006f"
    }
    d2 = {
        "Lio/didomi/sdk/models/InternalPurpose;",
        "Lio/didomi/sdk/o0;",
        "Lio/didomi/sdk/H3;",
        "",
        "id",
        "iabId",
        "name",
        "description",
        "descriptionLegal",
        "",
        "illustrations",
        "",
        "isConsent",
        "isEssential",
        "isLegitimateInterest",
        "isSpecialFeature",
        "type",
        "Lio/didomi/sdk/models/DataProcessingNamespaces;",
        "namespaces",
        "iabConsentRequired",
        "iabLiRequired",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZZZZLjava/lang/String;Lio/didomi/sdk/models/DataProcessingNamespaces;ZZ)V",
        "isConsentNotEssential",
        "()Z",
        "isLegitimateInterestNotEssential",
        "isLegitimateInterestOnly",
        "component1",
        "()Ljava/lang/String;",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "()Ljava/util/List;",
        "component7",
        "component8",
        "component9",
        "component10",
        "component11$android_release",
        "component11",
        "component12",
        "()Lio/didomi/sdk/models/DataProcessingNamespaces;",
        "component13$android_release",
        "component13",
        "component14$android_release",
        "component14",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZZZZLjava/lang/String;Lio/didomi/sdk/models/DataProcessingNamespaces;ZZ)Lio/didomi/sdk/models/InternalPurpose;",
        "toString",
        "",
        "hashCode",
        "()I",
        "",
        "other",
        "equals",
        "(Ljava/lang/Object;)Z",
        "describeContents",
        "Landroid/os/Parcel;",
        "parcel",
        "flags",
        "",
        "writeToParcel",
        "(Landroid/os/Parcel;I)V",
        "Ljava/lang/String;",
        "getId",
        "getIabId",
        "getName",
        "setName",
        "(Ljava/lang/String;)V",
        "getDescription",
        "setDescription",
        "getDescriptionLegal",
        "setDescriptionLegal",
        "Ljava/util/List;",
        "getIllustrations",
        "setIllustrations",
        "(Ljava/util/List;)V",
        "Z",
        "setConsent",
        "(Z)V",
        "setEssential",
        "setLegitimateInterest",
        "setSpecialFeature",
        "getType$android_release",
        "Lio/didomi/sdk/models/DataProcessingNamespaces;",
        "getNamespaces",
        "getIabConsentRequired$android_release",
        "setIabConsentRequired$android_release",
        "getIabLiRequired$android_release",
        "setIabLiRequired$android_release",
        "Lio/didomi/sdk/purpose/common/model/PurposeCategory;",
        "category",
        "Lio/didomi/sdk/purpose/common/model/PurposeCategory;",
        "getCategory",
        "()Lio/didomi/sdk/purpose/common/model/PurposeCategory;",
        "setCategory",
        "(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)V",
        "getCategory$annotations",
        "()V",
        "Companion",
        "a",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation

.annotation build Lkotlinx/parcelize/Parcelize;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lio/didomi/sdk/models/InternalPurpose$a;

.field public static final personalDataType:Ljava/lang/String; = "personalDataType"


# instance fields
.field private transient category:Lio/didomi/sdk/purpose/common/model/PurposeCategory;

.field private description:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/r/c;
        value = "description"
    .end annotation
.end field

.field private descriptionLegal:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/r/c;
        value = "descriptionLegal"
    .end annotation
.end field

.field private transient iabConsentRequired:Z

.field private final iabId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/r/c;
        value = "iabId"
    .end annotation
.end field

.field private transient iabLiRequired:Z

.field private final id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/r/c;
        value = "id"
    .end annotation
.end field

.field private illustrations:Ljava/util/List;
    .annotation runtime Lcom/google/gson/r/c;
        value = "illustrations"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private transient isConsent:Z

.field private transient isEssential:Z

.field private transient isLegitimateInterest:Z

.field private transient isSpecialFeature:Z

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/r/c;
        value = "name"
    .end annotation
.end field

.field private final namespaces:Lio/didomi/sdk/models/DataProcessingNamespaces;
    .annotation runtime Lcom/google/gson/r/c;
        value = "namespaces"
    .end annotation
.end field

.field private final transient type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/didomi/sdk/models/InternalPurpose$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/didomi/sdk/models/InternalPurpose$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lio/didomi/sdk/models/InternalPurpose;->Companion:Lio/didomi/sdk/models/InternalPurpose$a;

    new-instance v0, Lio/didomi/sdk/models/InternalPurpose$b;

    invoke-direct {v0}, Lio/didomi/sdk/models/InternalPurpose$b;-><init>()V

    sput-object v0, Lio/didomi/sdk/models/InternalPurpose;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZZZZLjava/lang/String;Lio/didomi/sdk/models/DataProcessingNamespaces;ZZ)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZZZ",
            "Ljava/lang/String;",
            "Lio/didomi/sdk/models/DataProcessingNamespaces;",
            "ZZ)V"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/models/InternalPurpose;->id:Ljava/lang/String;

    iput-object p2, p0, Lio/didomi/sdk/models/InternalPurpose;->iabId:Ljava/lang/String;

    iput-object p3, p0, Lio/didomi/sdk/models/InternalPurpose;->name:Ljava/lang/String;

    iput-object p4, p0, Lio/didomi/sdk/models/InternalPurpose;->description:Ljava/lang/String;

    iput-object p5, p0, Lio/didomi/sdk/models/InternalPurpose;->descriptionLegal:Ljava/lang/String;

    iput-object p6, p0, Lio/didomi/sdk/models/InternalPurpose;->illustrations:Ljava/util/List;

    iput-boolean p7, p0, Lio/didomi/sdk/models/InternalPurpose;->isConsent:Z

    iput-boolean p8, p0, Lio/didomi/sdk/models/InternalPurpose;->isEssential:Z

    iput-boolean p9, p0, Lio/didomi/sdk/models/InternalPurpose;->isLegitimateInterest:Z

    iput-boolean p10, p0, Lio/didomi/sdk/models/InternalPurpose;->isSpecialFeature:Z

    iput-object p11, p0, Lio/didomi/sdk/models/InternalPurpose;->type:Ljava/lang/String;

    iput-object p12, p0, Lio/didomi/sdk/models/InternalPurpose;->namespaces:Lio/didomi/sdk/models/DataProcessingNamespaces;

    iput-boolean p13, p0, Lio/didomi/sdk/models/InternalPurpose;->iabConsentRequired:Z

    iput-boolean p14, p0, Lio/didomi/sdk/models/InternalPurpose;->iabLiRequired:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZZZZLjava/lang/String;Lio/didomi/sdk/models/DataProcessingNamespaces;ZZILkotlin/jvm/internal/n;)V
    .registers 31

    move/from16 v0, p15

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    move-object v1, v2

    goto :goto_b

    :cond_9
    move-object/from16 v1, p2

    :goto_b
    and-int/lit8 v3, v0, 0x4

    const-string v4, ""

    if-eqz v3, :cond_13

    move-object v3, v4

    goto :goto_15

    :cond_13
    move-object/from16 v3, p3

    :goto_15
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_1a

    goto :goto_1c

    :cond_1a
    move-object/from16 v4, p4

    :goto_1c
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_22

    move-object v5, v2

    goto :goto_24

    :cond_22
    move-object/from16 v5, p5

    :goto_24
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_2a

    move-object v6, v2

    goto :goto_2c

    :cond_2a
    move-object/from16 v6, p6

    :goto_2c
    and-int/lit8 v7, v0, 0x40

    const/4 v8, 0x0

    if-eqz v7, :cond_33

    const/4 v7, 0x0

    goto :goto_35

    :cond_33
    move/from16 v7, p7

    :goto_35
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_3b

    const/4 v9, 0x0

    goto :goto_3d

    :cond_3b
    move/from16 v9, p8

    :goto_3d
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_43

    const/4 v10, 0x0

    goto :goto_45

    :cond_43
    move/from16 v10, p9

    :goto_45
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_4b

    const/4 v11, 0x0

    goto :goto_4d

    :cond_4b
    move/from16 v11, p10

    :goto_4d
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_53

    move-object v12, v2

    goto :goto_55

    :cond_53
    move-object/from16 v12, p11

    :goto_55
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_5a

    goto :goto_5c

    :cond_5a
    move-object/from16 v2, p12

    :goto_5c
    and-int/lit16 v13, v0, 0x1000

    if-eqz v13, :cond_62

    const/4 v13, 0x0

    goto :goto_64

    :cond_62
    move/from16 v13, p13

    :goto_64
    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_69

    goto :goto_6b

    :cond_69
    move/from16 v8, p14

    :goto_6b
    move-object/from16 p2, p0

    move-object/from16 p3, p1

    move-object/from16 p4, v1

    move-object/from16 p5, v3

    move-object/from16 p6, v4

    move-object/from16 p7, v5

    move-object/from16 p8, v6

    move/from16 p9, v7

    move/from16 p10, v9

    move/from16 p11, v10

    move/from16 p12, v11

    move-object/from16 p13, v12

    move-object/from16 p14, v2

    move/from16 p15, v13

    move/from16 p16, v8

    invoke-direct/range {p2 .. p16}, Lio/didomi/sdk/models/InternalPurpose;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZZZZLjava/lang/String;Lio/didomi/sdk/models/DataProcessingNamespaces;ZZ)V

    return-void
.end method

.method public static synthetic copy$default(Lio/didomi/sdk/models/InternalPurpose;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZZZZLjava/lang/String;Lio/didomi/sdk/models/DataProcessingNamespaces;ZZILjava/lang/Object;)Lio/didomi/sdk/models/InternalPurpose;
    .registers 32

    move-object v0, p0

    move/from16 v1, p15

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_a

    iget-object v2, v0, Lio/didomi/sdk/models/InternalPurpose;->id:Ljava/lang/String;

    goto :goto_c

    :cond_a
    move-object/from16 v2, p1

    :goto_c
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_13

    iget-object v3, v0, Lio/didomi/sdk/models/InternalPurpose;->iabId:Ljava/lang/String;

    goto :goto_15

    :cond_13
    move-object/from16 v3, p2

    :goto_15
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_1c

    iget-object v4, v0, Lio/didomi/sdk/models/InternalPurpose;->name:Ljava/lang/String;

    goto :goto_1e

    :cond_1c
    move-object/from16 v4, p3

    :goto_1e
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_25

    iget-object v5, v0, Lio/didomi/sdk/models/InternalPurpose;->description:Ljava/lang/String;

    goto :goto_27

    :cond_25
    move-object/from16 v5, p4

    :goto_27
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_2e

    iget-object v6, v0, Lio/didomi/sdk/models/InternalPurpose;->descriptionLegal:Ljava/lang/String;

    goto :goto_30

    :cond_2e
    move-object/from16 v6, p5

    :goto_30
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_37

    iget-object v7, v0, Lio/didomi/sdk/models/InternalPurpose;->illustrations:Ljava/util/List;

    goto :goto_39

    :cond_37
    move-object/from16 v7, p6

    :goto_39
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_40

    iget-boolean v8, v0, Lio/didomi/sdk/models/InternalPurpose;->isConsent:Z

    goto :goto_42

    :cond_40
    move/from16 v8, p7

    :goto_42
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_49

    iget-boolean v9, v0, Lio/didomi/sdk/models/InternalPurpose;->isEssential:Z

    goto :goto_4b

    :cond_49
    move/from16 v9, p8

    :goto_4b
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_52

    iget-boolean v10, v0, Lio/didomi/sdk/models/InternalPurpose;->isLegitimateInterest:Z

    goto :goto_54

    :cond_52
    move/from16 v10, p9

    :goto_54
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_5b

    iget-boolean v11, v0, Lio/didomi/sdk/models/InternalPurpose;->isSpecialFeature:Z

    goto :goto_5d

    :cond_5b
    move/from16 v11, p10

    :goto_5d
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_64

    iget-object v12, v0, Lio/didomi/sdk/models/InternalPurpose;->type:Ljava/lang/String;

    goto :goto_66

    :cond_64
    move-object/from16 v12, p11

    :goto_66
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_6d

    iget-object v13, v0, Lio/didomi/sdk/models/InternalPurpose;->namespaces:Lio/didomi/sdk/models/DataProcessingNamespaces;

    goto :goto_6f

    :cond_6d
    move-object/from16 v13, p12

    :goto_6f
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_76

    iget-boolean v14, v0, Lio/didomi/sdk/models/InternalPurpose;->iabConsentRequired:Z

    goto :goto_78

    :cond_76
    move/from16 v14, p13

    :goto_78
    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_7f

    iget-boolean v1, v0, Lio/didomi/sdk/models/InternalPurpose;->iabLiRequired:Z

    goto :goto_81

    :cond_7f
    move/from16 v1, p14

    :goto_81
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move/from16 p7, v8

    move/from16 p8, v9

    move/from16 p9, v10

    move/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move/from16 p13, v14

    move/from16 p14, v1

    invoke-virtual/range {p0 .. p14}, Lio/didomi/sdk/models/InternalPurpose;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZZZZLjava/lang/String;Lio/didomi/sdk/models/DataProcessingNamespaces;ZZ)Lio/didomi/sdk/models/InternalPurpose;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getCategory$annotations()V
    .registers 0

    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/InternalPurpose;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Z
    .registers 2

    iget-boolean v0, p0, Lio/didomi/sdk/models/InternalPurpose;->isSpecialFeature:Z

    return v0
.end method

.method public final component11$android_release()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/InternalPurpose;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final component12()Lio/didomi/sdk/models/DataProcessingNamespaces;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/InternalPurpose;->namespaces:Lio/didomi/sdk/models/DataProcessingNamespaces;

    return-object v0
.end method

.method public final component13$android_release()Z
    .registers 2

    iget-boolean v0, p0, Lio/didomi/sdk/models/InternalPurpose;->iabConsentRequired:Z

    return v0
.end method

.method public final component14$android_release()Z
    .registers 2

    iget-boolean v0, p0, Lio/didomi/sdk/models/InternalPurpose;->iabLiRequired:Z

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/InternalPurpose;->iabId:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/InternalPurpose;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/InternalPurpose;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/InternalPurpose;->descriptionLegal:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/models/InternalPurpose;->illustrations:Ljava/util/List;

    return-object v0
.end method

.method public final component7()Z
    .registers 2

    iget-boolean v0, p0, Lio/didomi/sdk/models/InternalPurpose;->isConsent:Z

    return v0
.end method

.method public final component8()Z
    .registers 2

    iget-boolean v0, p0, Lio/didomi/sdk/models/InternalPurpose;->isEssential:Z

    return v0
.end method

.method public final component9()Z
    .registers 2

    iget-boolean v0, p0, Lio/didomi/sdk/models/InternalPurpose;->isLegitimateInterest:Z

    return v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZZZZLjava/lang/String;Lio/didomi/sdk/models/DataProcessingNamespaces;ZZ)Lio/didomi/sdk/models/InternalPurpose;
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZZZ",
            "Ljava/lang/String;",
            "Lio/didomi/sdk/models/DataProcessingNamespaces;",
            "ZZ)",
            "Lio/didomi/sdk/models/InternalPurpose;"
        }
    .end annotation

    const-string v0, "id"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/didomi/sdk/models/InternalPurpose;

    move-object v1, v0

    move-object/from16 v3, p2

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    invoke-direct/range {v1 .. v15}, Lio/didomi/sdk/models/InternalPurpose;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZZZZLjava/lang/String;Lio/didomi/sdk/models/DataProcessingNamespaces;ZZ)V

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lio/didomi/sdk/models/InternalPurpose;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/didomi/sdk/models/InternalPurpose;

    iget-object v1, p0, Lio/didomi/sdk/models/InternalPurpose;->id:Ljava/lang/String;

    iget-object v3, p1, Lio/didomi/sdk/models/InternalPurpose;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lio/didomi/sdk/models/InternalPurpose;->iabId:Ljava/lang/String;

    iget-object v3, p1, Lio/didomi/sdk/models/InternalPurpose;->iabId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lio/didomi/sdk/models/InternalPurpose;->name:Ljava/lang/String;

    iget-object v3, p1, Lio/didomi/sdk/models/InternalPurpose;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lio/didomi/sdk/models/InternalPurpose;->description:Ljava/lang/String;

    iget-object v3, p1, Lio/didomi/sdk/models/InternalPurpose;->description:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    :cond_38
    iget-object v1, p0, Lio/didomi/sdk/models/InternalPurpose;->descriptionLegal:Ljava/lang/String;

    iget-object v3, p1, Lio/didomi/sdk/models/InternalPurpose;->descriptionLegal:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    return v2

    :cond_43
    iget-object v1, p0, Lio/didomi/sdk/models/InternalPurpose;->illustrations:Ljava/util/List;

    iget-object v3, p1, Lio/didomi/sdk/models/InternalPurpose;->illustrations:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    return v2

    :cond_4e
    iget-boolean v1, p0, Lio/didomi/sdk/models/InternalPurpose;->isConsent:Z

    iget-boolean v3, p1, Lio/didomi/sdk/models/InternalPurpose;->isConsent:Z

    if-eq v1, v3, :cond_55

    return v2

    :cond_55
    iget-boolean v1, p0, Lio/didomi/sdk/models/InternalPurpose;->isEssential:Z

    iget-boolean v3, p1, Lio/didomi/sdk/models/InternalPurpose;->isEssential:Z

    if-eq v1, v3, :cond_5c

    return v2

    :cond_5c
    iget-boolean v1, p0, Lio/didomi/sdk/models/InternalPurpose;->isLegitimateInterest:Z

    iget-boolean v3, p1, Lio/didomi/sdk/models/InternalPurpose;->isLegitimateInterest:Z

    if-eq v1, v3, :cond_63

    return v2

    :cond_63
    iget-boolean v1, p0, Lio/didomi/sdk/models/InternalPurpose;->isSpecialFeature:Z

    iget-boolean v3, p1, Lio/didomi/sdk/models/InternalPurpose;->isSpecialFeature:Z

    if-eq v1, v3, :cond_6a

    return v2

    :cond_6a
    iget-object v1, p0, Lio/didomi/sdk/models/InternalPurpose;->type:Ljava/lang/String;

    iget-object v3, p1, Lio/didomi/sdk/models/InternalPurpose;->type:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_75

    return v2

    :cond_75
    iget-object v1, p0, Lio/didomi/sdk/models/InternalPurpose;->namespaces:Lio/didomi/sdk/models/DataProcessingNamespaces;

    iget-object v3, p1, Lio/didomi/sdk/models/InternalPurpose;->namespaces:Lio/didomi/sdk/models/DataProcessingNamespaces;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_80

    return v2

    :cond_80
    iget-boolean v1, p0, Lio/didomi/sdk/models/InternalPurpose;->iabConsentRequired:Z

    iget-boolean v3, p1, Lio/didomi/sdk/models/InternalPurpose;->iabConsentRequired:Z

    if-eq v1, v3, :cond_87

    return v2

    :cond_87
    iget-boolean v1, p0, Lio/didomi/sdk/models/InternalPurpose;->iabLiRequired:Z

    iget-boolean p1, p1, Lio/didomi/sdk/models/InternalPurpose;->iabLiRequired:Z

    if-eq v1, p1, :cond_8e

    return v2

    :cond_8e
    return v0
.end method

.method public final getCategory()Lio/didomi/sdk/purpose/common/model/PurposeCategory;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/InternalPurpose;->category:Lio/didomi/sdk/purpose/common/model/PurposeCategory;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/InternalPurpose;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDescriptionLegal()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/InternalPurpose;->descriptionLegal:Ljava/lang/String;

    return-object v0
.end method

.method public final getIabConsentRequired$android_release()Z
    .registers 2

    iget-boolean v0, p0, Lio/didomi/sdk/models/InternalPurpose;->iabConsentRequired:Z

    return v0
.end method

.method public getIabId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/InternalPurpose;->iabId:Ljava/lang/String;

    return-object v0
.end method

.method public final getIabLiRequired$android_release()Z
    .registers 2

    iget-boolean v0, p0, Lio/didomi/sdk/models/InternalPurpose;->iabLiRequired:Z

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/InternalPurpose;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIllustrations()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/models/InternalPurpose;->illustrations:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/InternalPurpose;->name:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getNamespaces()Lio/didomi/sdk/N3;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/models/InternalPurpose;->getNamespaces()Lio/didomi/sdk/models/DataProcessingNamespaces;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaces()Lio/didomi/sdk/models/DataProcessingNamespaces;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/InternalPurpose;->namespaces:Lio/didomi/sdk/models/DataProcessingNamespaces;

    return-object v0
.end method

.method public final getType$android_release()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/models/InternalPurpose;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    iget-object v0, p0, Lio/didomi/sdk/models/InternalPurpose;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/models/InternalPurpose;->iabId:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_f

    const/4 v1, 0x0

    goto :goto_13

    :cond_f
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_13
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/models/InternalPurpose;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/models/InternalPurpose;->description:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/models/InternalPurpose;->descriptionLegal:Ljava/lang/String;

    if-nez v1, :cond_2e

    const/4 v1, 0x0

    goto :goto_32

    :cond_2e
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_32
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/models/InternalPurpose;->illustrations:Ljava/util/List;

    if-nez v1, :cond_3b

    const/4 v1, 0x0

    goto :goto_3f

    :cond_3b
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_3f
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lio/didomi/sdk/models/InternalPurpose;->isConsent:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_48

    const/4 v1, 0x1

    :cond_48
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lio/didomi/sdk/models/InternalPurpose;->isEssential:Z

    if-eqz v1, :cond_50

    const/4 v1, 0x1

    :cond_50
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lio/didomi/sdk/models/InternalPurpose;->isLegitimateInterest:Z

    if-eqz v1, :cond_58

    const/4 v1, 0x1

    :cond_58
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lio/didomi/sdk/models/InternalPurpose;->isSpecialFeature:Z

    if-eqz v1, :cond_60

    const/4 v1, 0x1

    :cond_60
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/models/InternalPurpose;->type:Ljava/lang/String;

    if-nez v1, :cond_69

    const/4 v1, 0x0

    goto :goto_6d

    :cond_69
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_6d
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/models/InternalPurpose;->namespaces:Lio/didomi/sdk/models/DataProcessingNamespaces;

    if-nez v1, :cond_75

    goto :goto_79

    :cond_75
    invoke-virtual {v1}, Lio/didomi/sdk/models/DataProcessingNamespaces;->hashCode()I

    move-result v2

    :goto_79
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lio/didomi/sdk/models/InternalPurpose;->iabConsentRequired:Z

    if-eqz v1, :cond_81

    const/4 v1, 0x1

    :cond_81
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lio/didomi/sdk/models/InternalPurpose;->iabLiRequired:Z

    if-eqz v1, :cond_89

    goto :goto_8a

    :cond_89
    move v3, v1

    :goto_8a
    add-int/2addr v0, v3

    return v0
.end method

.method public final isConsent()Z
    .registers 2

    iget-boolean v0, p0, Lio/didomi/sdk/models/InternalPurpose;->isConsent:Z

    return v0
.end method

.method public final isConsentNotEssential()Z
    .registers 2

    iget-boolean v0, p0, Lio/didomi/sdk/models/InternalPurpose;->isConsent:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lio/didomi/sdk/models/InternalPurpose;->isEssential:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public final isEssential()Z
    .registers 2

    iget-boolean v0, p0, Lio/didomi/sdk/models/InternalPurpose;->isEssential:Z

    return v0
.end method

.method public final isLegitimateInterest()Z
    .registers 2

    iget-boolean v0, p0, Lio/didomi/sdk/models/InternalPurpose;->isLegitimateInterest:Z

    return v0
.end method

.method public final isLegitimateInterestNotEssential()Z
    .registers 2

    iget-boolean v0, p0, Lio/didomi/sdk/models/InternalPurpose;->isLegitimateInterest:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lio/didomi/sdk/models/InternalPurpose;->isEssential:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public final isLegitimateInterestOnly()Z
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/models/InternalPurpose;->isLegitimateInterestNotEssential()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lio/didomi/sdk/models/InternalPurpose;->isConsent:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public final isSpecialFeature()Z
    .registers 2

    iget-boolean v0, p0, Lio/didomi/sdk/models/InternalPurpose;->isSpecialFeature:Z

    return v0
.end method

.method public final setCategory(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/models/InternalPurpose;->category:Lio/didomi/sdk/purpose/common/model/PurposeCategory;

    return-void
.end method

.method public final setConsent(Z)V
    .registers 2

    iput-boolean p1, p0, Lio/didomi/sdk/models/InternalPurpose;->isConsent:Z

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/didomi/sdk/models/InternalPurpose;->description:Ljava/lang/String;

    return-void
.end method

.method public setDescriptionLegal(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/models/InternalPurpose;->descriptionLegal:Ljava/lang/String;

    return-void
.end method

.method public final setEssential(Z)V
    .registers 2

    iput-boolean p1, p0, Lio/didomi/sdk/models/InternalPurpose;->isEssential:Z

    return-void
.end method

.method public final setIabConsentRequired$android_release(Z)V
    .registers 2

    iput-boolean p1, p0, Lio/didomi/sdk/models/InternalPurpose;->iabConsentRequired:Z

    return-void
.end method

.method public final setIabLiRequired$android_release(Z)V
    .registers 2

    iput-boolean p1, p0, Lio/didomi/sdk/models/InternalPurpose;->iabLiRequired:Z

    return-void
.end method

.method public setIllustrations(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/didomi/sdk/models/InternalPurpose;->illustrations:Ljava/util/List;

    return-void
.end method

.method public final setLegitimateInterest(Z)V
    .registers 2

    iput-boolean p1, p0, Lio/didomi/sdk/models/InternalPurpose;->isLegitimateInterest:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/didomi/sdk/models/InternalPurpose;->name:Ljava/lang/String;

    return-void
.end method

.method public final setSpecialFeature(Z)V
    .registers 2

    iput-boolean p1, p0, Lio/didomi/sdk/models/InternalPurpose;->isSpecialFeature:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InternalPurpose(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/models/InternalPurpose;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", iabId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/models/InternalPurpose;->iabId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/models/InternalPurpose;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/models/InternalPurpose;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", descriptionLegal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/models/InternalPurpose;->descriptionLegal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", illustrations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/models/InternalPurpose;->illustrations:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isConsent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/didomi/sdk/models/InternalPurpose;->isConsent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isEssential="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/didomi/sdk/models/InternalPurpose;->isEssential:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isLegitimateInterest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/didomi/sdk/models/InternalPurpose;->isLegitimateInterest:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isSpecialFeature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/didomi/sdk/models/InternalPurpose;->isSpecialFeature:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/models/InternalPurpose;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", namespaces="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/models/InternalPurpose;->namespaces:Lio/didomi/sdk/models/DataProcessingNamespaces;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", iabConsentRequired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/didomi/sdk/models/InternalPurpose;->iabConsentRequired:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", iabLiRequired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/didomi/sdk/models/InternalPurpose;->iabLiRequired:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/models/InternalPurpose;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/models/InternalPurpose;->iabId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/models/InternalPurpose;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/models/InternalPurpose;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/models/InternalPurpose;->descriptionLegal:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/models/InternalPurpose;->illustrations:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-boolean v0, p0, Lio/didomi/sdk/models/InternalPurpose;->isConsent:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lio/didomi/sdk/models/InternalPurpose;->isEssential:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lio/didomi/sdk/models/InternalPurpose;->isLegitimateInterest:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lio/didomi/sdk/models/InternalPurpose;->isSpecialFeature:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lio/didomi/sdk/models/InternalPurpose;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/models/InternalPurpose;->namespaces:Lio/didomi/sdk/models/DataProcessingNamespaces;

    if-nez v0, :cond_45

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4c

    :cond_45
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1, p2}, Lio/didomi/sdk/models/DataProcessingNamespaces;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_4c
    iget-boolean p2, p0, Lio/didomi/sdk/models/InternalPurpose;->iabConsentRequired:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lio/didomi/sdk/models/InternalPurpose;->iabLiRequired:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
