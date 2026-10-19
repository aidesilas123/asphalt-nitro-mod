###### Class io.didomi.drawable.vendors.ctv.model.TVDataProcessingLegalType (io.didomi.sdk.vendors.ctv.model.TVDataProcessingLegalType)
.class public final enum Lio/didomi/sdk/vendors/ctv/model/TVDataProcessingLegalType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/didomi/sdk/vendors/ctv/model/TVDataProcessingLegalType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0087\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lio/didomi/sdk/vendors/ctv/model/TVDataProcessingLegalType;",
        "",
        "(Ljava/lang/String;I)V",
        "CONSENT",
        "LEGINT",
        "ADDITIONAL",
        "REQUIRED",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/didomi/sdk/vendors/ctv/model/TVDataProcessingLegalType;

.field public static final enum ADDITIONAL:Lio/didomi/sdk/vendors/ctv/model/TVDataProcessingLegalType;

.field public static final enum CONSENT:Lio/didomi/sdk/vendors/ctv/model/TVDataProcessingLegalType;

.field public static final enum LEGINT:Lio/didomi/sdk/vendors/ctv/model/TVDataProcessingLegalType;

.field public static final enum REQUIRED:Lio/didomi/sdk/vendors/ctv/model/TVDataProcessingLegalType;


# direct methods
.method private static final synthetic $values()[Lio/didomi/sdk/vendors/ctv/model/TVDataProcessingLegalType;
    .registers 3

    const/4 v0, 0x4

    new-array v0, v0, [Lio/didomi/sdk/vendors/ctv/model/TVDataProcessingLegalType;

    sget-object v1, Lio/didomi/sdk/vendors/ctv/model/TVDataProcessingLegalType;->CONSENT:Lio/didomi/sdk/vendors/ctv/model/TVDataProcessingLegalType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lio/didomi/sdk/vendors/ctv/model/TVDataProcessingLegalType;->LEGINT:Lio/didomi/sdk/vendors/ctv/model/TVDataProcessingLegalType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lio/didomi/sdk/vendors/ctv/model/TVDataProcessingLegalType;->ADDITIONAL:Lio/didomi/sdk/vendors/ctv/model/TVDataProcessingLegalType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lio/didomi/sdk/vendors/ctv/model/TVDataProcessingLegalType;->REQUIRED:Lio/didomi/sdk/vendors/ctv/model/TVDataProcessingLegalType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lio/didomi/sdk/vendors/ctv/model/TVDataProcessingLegalType;

    const-string v1, "CONSENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/didomi/sdk/vendors/ctv/model/TVDataProcessingLegalType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/didomi/sdk/vendors/ctv/model/TVDataProcessingLegalType;->CONSENT:Lio/didomi/sdk/vendors/ctv/model/TVDataProcessingLegalType;

    new-instance v0, Lio/didomi/sdk/vendors/ctv/model/TVDataProcessingLegalType;

    const-string v1, "LEGINT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/didomi/sdk/vendors/ctv/model/TVDataProcessingLegalType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/didomi/sdk/vendors/ctv/model/TVDataProcessingLegalType;->LEGINT:Lio/didomi/sdk/vendors/ctv/model/TVDataProcessingLegalType;

    new-instance v0, Lio/didomi/sdk/vendors/ctv/model/TVDataProcessingLegalType;

    const-string v1, "ADDITIONAL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/didomi/sdk/vendors/ctv/model/TVDataProcessingLegalType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/didomi/sdk/vendors/ctv/model/TVDataProcessingLegalType;->ADDITIONAL:Lio/didomi/sdk/vendors/ctv/model/TVDataProcessingLegalType;

    new-instance v0, Lio/didomi/sdk/vendors/ctv/model/TVDataProcessingLegalType;

    const-string v1, "REQUIRED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lio/didomi/sdk/vendors/ctv/model/TVDataProcessingLegalType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/didomi/sdk/vendors/ctv/model/TVDataProcessingLegalType;->REQUIRED:Lio/didomi/sdk/vendors/ctv/model/TVDataProcessingLegalType;

    invoke-static {}, Lio/didomi/sdk/vendors/ctv/model/TVDataProcessingLegalType;->$values()[Lio/didomi/sdk/vendors/ctv/model/TVDataProcessingLegalType;

    move-result-object v0

    sput-object v0, Lio/didomi/sdk/vendors/ctv/model/TVDataProcessingLegalType;->$VALUES:[Lio/didomi/sdk/vendors/ctv/model/TVDataProcessingLegalType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/didomi/sdk/vendors/ctv/model/TVDataProcessingLegalType;
    .registers 2

    const-class v0, Lio/didomi/sdk/vendors/ctv/model/TVDataProcessingLegalType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/didomi/sdk/vendors/ctv/model/TVDataProcessingLegalType;

    return-object p0
.end method

.method public static values()[Lio/didomi/sdk/vendors/ctv/model/TVDataProcessingLegalType;
    .registers 1

    sget-object v0, Lio/didomi/sdk/vendors/ctv/model/TVDataProcessingLegalType;->$VALUES:[Lio/didomi/sdk/vendors/ctv/model/TVDataProcessingLegalType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/didomi/sdk/vendors/ctv/model/TVDataProcessingLegalType;

    return-object v0
.end method
