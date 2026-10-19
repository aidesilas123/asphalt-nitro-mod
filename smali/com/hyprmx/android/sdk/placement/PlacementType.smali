###### Class com.hyprmx.android.sdk.placement.PlacementType (com.hyprmx.android.sdk.placement.PlacementType)
.class public final enum Lcom/hyprmx/android/sdk/placement/PlacementType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hyprmx/android/sdk/placement/PlacementType$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hyprmx/android/sdk/placement/PlacementType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\t\u0008\u0087\u0001\u0018\u0000 \u00042\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0005B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/hyprmx/android/sdk/placement/PlacementType;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "Companion",
        "a",
        "REWARDED",
        "INTERSTITIAL",
        "BANNER",
        "INVALID",
        "HyprMX-Mobile-Android-SDK_release"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hyprmx/android/sdk/placement/PlacementType;

.field public static final enum BANNER:Lcom/hyprmx/android/sdk/placement/PlacementType;

.field public static final Companion:Lcom/hyprmx/android/sdk/placement/PlacementType$a;

.field public static final enum INTERSTITIAL:Lcom/hyprmx/android/sdk/placement/PlacementType;

.field public static final enum INVALID:Lcom/hyprmx/android/sdk/placement/PlacementType;

.field public static final enum REWARDED:Lcom/hyprmx/android/sdk/placement/PlacementType;


# direct methods
.method private static final synthetic $values()[Lcom/hyprmx/android/sdk/placement/PlacementType;
    .registers 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/hyprmx/android/sdk/placement/PlacementType;

    sget-object v1, Lcom/hyprmx/android/sdk/placement/PlacementType;->REWARDED:Lcom/hyprmx/android/sdk/placement/PlacementType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/hyprmx/android/sdk/placement/PlacementType;->INTERSTITIAL:Lcom/hyprmx/android/sdk/placement/PlacementType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/hyprmx/android/sdk/placement/PlacementType;->BANNER:Lcom/hyprmx/android/sdk/placement/PlacementType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/hyprmx/android/sdk/placement/PlacementType;->INVALID:Lcom/hyprmx/android/sdk/placement/PlacementType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/hyprmx/android/sdk/placement/PlacementType;

    const-string v1, "REWARDED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hyprmx/android/sdk/placement/PlacementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyprmx/android/sdk/placement/PlacementType;->REWARDED:Lcom/hyprmx/android/sdk/placement/PlacementType;

    new-instance v0, Lcom/hyprmx/android/sdk/placement/PlacementType;

    const-string v1, "INTERSTITIAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/hyprmx/android/sdk/placement/PlacementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyprmx/android/sdk/placement/PlacementType;->INTERSTITIAL:Lcom/hyprmx/android/sdk/placement/PlacementType;

    new-instance v0, Lcom/hyprmx/android/sdk/placement/PlacementType;

    const-string v1, "BANNER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/hyprmx/android/sdk/placement/PlacementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyprmx/android/sdk/placement/PlacementType;->BANNER:Lcom/hyprmx/android/sdk/placement/PlacementType;

    new-instance v0, Lcom/hyprmx/android/sdk/placement/PlacementType;

    const-string v1, "INVALID"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/hyprmx/android/sdk/placement/PlacementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hyprmx/android/sdk/placement/PlacementType;->INVALID:Lcom/hyprmx/android/sdk/placement/PlacementType;

    invoke-static {}, Lcom/hyprmx/android/sdk/placement/PlacementType;->$values()[Lcom/hyprmx/android/sdk/placement/PlacementType;

    move-result-object v0

    sput-object v0, Lcom/hyprmx/android/sdk/placement/PlacementType;->$VALUES:[Lcom/hyprmx/android/sdk/placement/PlacementType;

    new-instance v0, Lcom/hyprmx/android/sdk/placement/PlacementType$a;

    invoke-direct {v0}, Lcom/hyprmx/android/sdk/placement/PlacementType$a;-><init>()V

    sput-object v0, Lcom/hyprmx/android/sdk/placement/PlacementType;->Companion:Lcom/hyprmx/android/sdk/placement/PlacementType$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hyprmx/android/sdk/placement/PlacementType;
    .registers 2

    const-class v0, Lcom/hyprmx/android/sdk/placement/PlacementType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hyprmx/android/sdk/placement/PlacementType;

    return-object p0
.end method

.method public static values()[Lcom/hyprmx/android/sdk/placement/PlacementType;
    .registers 1

    sget-object v0, Lcom/hyprmx/android/sdk/placement/PlacementType;->$VALUES:[Lcom/hyprmx/android/sdk/placement/PlacementType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hyprmx/android/sdk/placement/PlacementType;

    return-object v0
.end method

###### Class com.hyprmx.android.sdk.placement.PlacementType.Companion (com.hyprmx.android.sdk.placement.PlacementType$a)
.class public final Lcom/hyprmx/android/sdk/placement/PlacementType$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyprmx/android/sdk/placement/PlacementType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
