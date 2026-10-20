###### Class com.tapjoy.internal.e4 (com.tapjoy.internal.e4)
.class public final enum Lcom/tapjoy/internal/e4;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/tapjoy/internal/e4;

.field public static final enum b:Lcom/tapjoy/internal/e4;

.field public static final enum c:Lcom/tapjoy/internal/e4;

.field public static final enum d:Lcom/tapjoy/internal/e4;

.field public static final enum e:Lcom/tapjoy/internal/e4;

.field public static final enum f:Lcom/tapjoy/internal/e4;

.field public static final enum g:Lcom/tapjoy/internal/e4;

.field public static final enum h:Lcom/tapjoy/internal/e4;

.field public static final synthetic i:[Lcom/tapjoy/internal/e4;


# direct methods
.method public static constructor <clinit>()V
    .registers 16

    new-instance v0, Lcom/tapjoy/internal/e4;

    const/4 v1, 0x0

    const-string v2, "EMPTY_ARRAY"

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/internal/e4;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/tapjoy/internal/e4;->a:Lcom/tapjoy/internal/e4;

    new-instance v2, Lcom/tapjoy/internal/e4;

    const/4 v3, 0x1

    const-string v4, "NONEMPTY_ARRAY"

    invoke-direct {v2, v3, v4}, Lcom/tapjoy/internal/e4;-><init>(ILjava/lang/String;)V

    sput-object v2, Lcom/tapjoy/internal/e4;->b:Lcom/tapjoy/internal/e4;

    new-instance v4, Lcom/tapjoy/internal/e4;

    const/4 v5, 0x2

    const-string v6, "EMPTY_OBJECT"

    invoke-direct {v4, v5, v6}, Lcom/tapjoy/internal/e4;-><init>(ILjava/lang/String;)V

    sput-object v4, Lcom/tapjoy/internal/e4;->c:Lcom/tapjoy/internal/e4;

    new-instance v6, Lcom/tapjoy/internal/e4;

    const/4 v7, 0x3

    const-string v8, "DANGLING_NAME"

    invoke-direct {v6, v7, v8}, Lcom/tapjoy/internal/e4;-><init>(ILjava/lang/String;)V

    sput-object v6, Lcom/tapjoy/internal/e4;->d:Lcom/tapjoy/internal/e4;

    new-instance v8, Lcom/tapjoy/internal/e4;

    const/4 v9, 0x4

    const-string v10, "NONEMPTY_OBJECT"

    invoke-direct {v8, v9, v10}, Lcom/tapjoy/internal/e4;-><init>(ILjava/lang/String;)V

    sput-object v8, Lcom/tapjoy/internal/e4;->e:Lcom/tapjoy/internal/e4;

    new-instance v10, Lcom/tapjoy/internal/e4;

    const/4 v11, 0x5

    const-string v12, "EMPTY_DOCUMENT"

    invoke-direct {v10, v11, v12}, Lcom/tapjoy/internal/e4;-><init>(ILjava/lang/String;)V

    sput-object v10, Lcom/tapjoy/internal/e4;->f:Lcom/tapjoy/internal/e4;

    new-instance v12, Lcom/tapjoy/internal/e4;

    const/4 v13, 0x6

    const-string v14, "NONEMPTY_DOCUMENT"

    invoke-direct {v12, v13, v14}, Lcom/tapjoy/internal/e4;-><init>(ILjava/lang/String;)V

    sput-object v12, Lcom/tapjoy/internal/e4;->g:Lcom/tapjoy/internal/e4;

    new-instance v14, Lcom/tapjoy/internal/e4;

    const/4 v15, 0x7

    const-string v13, "CLOSED"

    invoke-direct {v14, v15, v13}, Lcom/tapjoy/internal/e4;-><init>(ILjava/lang/String;)V

    sput-object v14, Lcom/tapjoy/internal/e4;->h:Lcom/tapjoy/internal/e4;

    const/16 v13, 0x8

    new-array v13, v13, [Lcom/tapjoy/internal/e4;

    aput-object v0, v13, v1

    aput-object v2, v13, v3

    aput-object v4, v13, v5

    aput-object v6, v13, v7

    aput-object v8, v13, v9

    aput-object v10, v13, v11

    const/4 v0, 0x6

    aput-object v12, v13, v0

    aput-object v14, v13, v15

    sput-object v13, Lcom/tapjoy/internal/e4;->i:[Lcom/tapjoy/internal/e4;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tapjoy/internal/e4;
    .registers 2

    const-class v0, Lcom/tapjoy/internal/e4;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tapjoy/internal/e4;

    return-object p0
.end method

.method public static values()[Lcom/tapjoy/internal/e4;
    .registers 1

    sget-object v0, Lcom/tapjoy/internal/e4;->i:[Lcom/tapjoy/internal/e4;

    invoke-virtual {v0}, [Lcom/tapjoy/internal/e4;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tapjoy/internal/e4;

    return-object v0
.end method
