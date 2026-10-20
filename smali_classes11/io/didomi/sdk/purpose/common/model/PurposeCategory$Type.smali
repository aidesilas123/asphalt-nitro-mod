###### Class io.didomi.sdk.purpose.common.model.PurposeCategory.Type (io.didomi.sdk.purpose.common.model.PurposeCategory$Type)
.class public final enum Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/didomi/sdk/purpose/common/model/PurposeCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u000c\u0008\u0087\u0001\u0018\u0000 \t2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\nB\u0013\u0008\u0002\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0006\u001a\u0004\u0008\u0007\u0010\u0008j\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type;",
        "",
        "",
        "value",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "Ljava/lang/String;",
        "getValue",
        "()Ljava/lang/String;",
        "Companion",
        "a",
        "Unknown",
        "Purpose",
        "Category",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type;

.field public static final enum Category:Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type;

.field public static final Companion:Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type$a;

.field public static final enum Purpose:Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type;

.field public static final enum Unknown:Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type;
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type;

    sget-object v1, Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type;->Unknown:Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type;->Purpose:Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type;->Category:Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 7

    new-instance v6, Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type;-><init>(Ljava/lang/String;ILjava/lang/String;ILkotlin/jvm/internal/n;)V

    sput-object v6, Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type;->Unknown:Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type;

    new-instance v0, Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type;

    const-string v1, "Purpose"

    const/4 v2, 0x1

    const-string v3, "purpose"

    invoke-direct {v0, v1, v2, v3}, Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type;->Purpose:Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type;

    new-instance v0, Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type;

    const-string v1, "Category"

    const/4 v2, 0x2

    const-string v3, "category"

    invoke-direct {v0, v1, v2, v3}, Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type;->Category:Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type;

    invoke-static {}, Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type;->$values()[Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type;

    move-result-object v0

    sput-object v0, Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type;->$VALUES:[Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type;

    new-instance v0, Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type;->Companion:Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type;->value:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;ILkotlin/jvm/internal/n;)V
    .registers 6

    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_6

    const-string p3, ""

    :cond_6
    invoke-direct {p0, p1, p2, p3}, Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type;
    .registers 2

    const-class v0, Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type;

    return-object p0
.end method

.method public static values()[Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type;
    .registers 1

    sget-object v0, Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type;->$VALUES:[Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type;->value:Ljava/lang/String;

    return-object v0
.end method
