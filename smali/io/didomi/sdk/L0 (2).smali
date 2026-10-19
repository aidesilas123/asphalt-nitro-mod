###### Class io.didomi.drawable.L0 (io.didomi.sdk.L0)
.class public final enum Lio/didomi/sdk/L0;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/didomi/sdk/L0;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\t\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lio/didomi/sdk/L0;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "a",
        "b",
        "c",
        "d",
        "e",
        "f",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final enum a:Lio/didomi/sdk/L0;

.field public static final enum b:Lio/didomi/sdk/L0;

.field public static final enum c:Lio/didomi/sdk/L0;

.field public static final enum d:Lio/didomi/sdk/L0;

.field public static final enum e:Lio/didomi/sdk/L0;

.field public static final enum f:Lio/didomi/sdk/L0;

.field private static final synthetic g:[Lio/didomi/sdk/L0;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lio/didomi/sdk/L0;

    const-string v1, "NOTICE_DESCRIPTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/didomi/sdk/L0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/didomi/sdk/L0;->a:Lio/didomi/sdk/L0;

    new-instance v0, Lio/didomi/sdk/L0;

    const-string v1, "NOTICE_TITLE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/didomi/sdk/L0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/didomi/sdk/L0;->b:Lio/didomi/sdk/L0;

    new-instance v0, Lio/didomi/sdk/L0;

    const-string v1, "PREFERENCES_DESCRIPTION"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/didomi/sdk/L0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/didomi/sdk/L0;->c:Lio/didomi/sdk/L0;

    new-instance v0, Lio/didomi/sdk/L0;

    const-string v1, "PREFERENCES_TITLE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lio/didomi/sdk/L0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/didomi/sdk/L0;->d:Lio/didomi/sdk/L0;

    new-instance v0, Lio/didomi/sdk/L0;

    const-string v1, "PRIMARY"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lio/didomi/sdk/L0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/didomi/sdk/L0;->e:Lio/didomi/sdk/L0;

    new-instance v0, Lio/didomi/sdk/L0;

    const-string v1, "SECONDARY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lio/didomi/sdk/L0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/didomi/sdk/L0;->f:Lio/didomi/sdk/L0;

    invoke-static {}, Lio/didomi/sdk/L0;->a()[Lio/didomi/sdk/L0;

    move-result-object v0

    sput-object v0, Lio/didomi/sdk/L0;->g:[Lio/didomi/sdk/L0;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static final synthetic a()[Lio/didomi/sdk/L0;
    .registers 3

    const/4 v0, 0x6

    new-array v0, v0, [Lio/didomi/sdk/L0;

    sget-object v1, Lio/didomi/sdk/L0;->a:Lio/didomi/sdk/L0;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lio/didomi/sdk/L0;->b:Lio/didomi/sdk/L0;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lio/didomi/sdk/L0;->c:Lio/didomi/sdk/L0;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lio/didomi/sdk/L0;->d:Lio/didomi/sdk/L0;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lio/didomi/sdk/L0;->e:Lio/didomi/sdk/L0;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lio/didomi/sdk/L0;->f:Lio/didomi/sdk/L0;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/didomi/sdk/L0;
    .registers 2

    const-class v0, Lio/didomi/sdk/L0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/didomi/sdk/L0;

    return-object p0
.end method

.method public static values()[Lio/didomi/sdk/L0;
    .registers 1

    sget-object v0, Lio/didomi/sdk/L0;->g:[Lio/didomi/sdk/L0;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/didomi/sdk/L0;

    return-object v0
.end method
