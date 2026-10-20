###### Class com.moat.analytics.mobile.glft.g.a (com.moat.analytics.mobile.glft.g$a)
.class public final enum Lcom/moat/analytics/mobile/glft/g$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/glft/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/moat/analytics/mobile/glft/g$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/moat/analytics/mobile/glft/g$a;

.field public static final enum b:Lcom/moat/analytics/mobile/glft/g$a;

.field public static final enum c:Lcom/moat/analytics/mobile/glft/g$a;

.field public static final enum d:Lcom/moat/analytics/mobile/glft/g$a;

.field public static final enum e:Lcom/moat/analytics/mobile/glft/g$a;

.field private static final synthetic f:[Lcom/moat/analytics/mobile/glft/g$a;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    new-instance v0, Lcom/moat/analytics/mobile/glft/g$a;

    const-string v1, "UNINITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/moat/analytics/mobile/glft/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/moat/analytics/mobile/glft/g$a;->a:Lcom/moat/analytics/mobile/glft/g$a;

    new-instance v1, Lcom/moat/analytics/mobile/glft/g$a;

    const-string v3, "PAUSED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/moat/analytics/mobile/glft/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/moat/analytics/mobile/glft/g$a;->b:Lcom/moat/analytics/mobile/glft/g$a;

    new-instance v3, Lcom/moat/analytics/mobile/glft/g$a;

    const-string v5, "PLAYING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/moat/analytics/mobile/glft/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/moat/analytics/mobile/glft/g$a;->c:Lcom/moat/analytics/mobile/glft/g$a;

    new-instance v5, Lcom/moat/analytics/mobile/glft/g$a;

    const-string v7, "STOPPED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/moat/analytics/mobile/glft/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/moat/analytics/mobile/glft/g$a;->d:Lcom/moat/analytics/mobile/glft/g$a;

    new-instance v7, Lcom/moat/analytics/mobile/glft/g$a;

    const-string v9, "COMPLETED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/moat/analytics/mobile/glft/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/moat/analytics/mobile/glft/g$a;->e:Lcom/moat/analytics/mobile/glft/g$a;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/moat/analytics/mobile/glft/g$a;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/moat/analytics/mobile/glft/g$a;->f:[Lcom/moat/analytics/mobile/glft/g$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/moat/analytics/mobile/glft/g$a;
    .registers 2

    const-class v0, Lcom/moat/analytics/mobile/glft/g$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/moat/analytics/mobile/glft/g$a;

    return-object p0
.end method

.method public static values()[Lcom/moat/analytics/mobile/glft/g$a;
    .registers 1

    sget-object v0, Lcom/moat/analytics/mobile/glft/g$a;->f:[Lcom/moat/analytics/mobile/glft/g$a;

    invoke-virtual {v0}, [Lcom/moat/analytics/mobile/glft/g$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/moat/analytics/mobile/glft/g$a;

    return-object v0
.end method
