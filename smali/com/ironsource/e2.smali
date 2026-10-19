###### Class com.json.e2 (com.ironsource.e2)
.class public Lcom/ironsource/e2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/e2$a;
    }
.end annotation


# instance fields
.field private a:Lcom/ironsource/e2$a;

.field private b:Ljava/util/ArrayList;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/ironsource/e2$a;->a:Lcom/ironsource/e2$a;

    iput-object v0, p0, Lcom/ironsource/e2;->a:Lcom/ironsource/e2$a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/e2;->b:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/ironsource/e2;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/ironsource/e2;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    :goto_8
    array-length v2, v0

    if-ge v1, v2, :cond_18

    aget-object v2, v0, v1

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    const/4 v2, 0x0

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_18
    iget-object v0, p0, Lcom/ironsource/e2;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    monitor-exit p0

    return-void

    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/Runnable;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/ironsource/e2;->a:Lcom/ironsource/e2$a;

    sget-object v1, Lcom/ironsource/e2$a;->b:Lcom/ironsource/e2$a;

    if-eq v0, v1, :cond_e

    iget-object v0, p0, Lcom/ironsource/e2;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_13

    monitor-exit p0

    return-void

    :cond_e
    :try_start_e
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_13

    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()V
    .registers 2

    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/ironsource/e2$a;->a:Lcom/ironsource/e2$a;

    iput-object v0, p0, Lcom/ironsource/e2;->a:Lcom/ironsource/e2$a;
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-void

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .registers 2

    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/ironsource/e2$a;->b:Lcom/ironsource/e2$a;

    iput-object v0, p0, Lcom/ironsource/e2;->a:Lcom/ironsource/e2$a;
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-void

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

###### Class com.ironsource.e2.a (com.ironsource.e2$a)
.class final enum Lcom/ironsource/e2$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/e2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/e2$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/ironsource/e2$a;

.field public static final enum b:Lcom/ironsource/e2$a;

.field private static final synthetic c:[Lcom/ironsource/e2$a;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/ironsource/e2$a;

    const-string v1, "NOT_READY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ironsource/e2$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/e2$a;->a:Lcom/ironsource/e2$a;

    new-instance v1, Lcom/ironsource/e2$a;

    const-string v3, "READY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ironsource/e2$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ironsource/e2$a;->b:Lcom/ironsource/e2$a;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/ironsource/e2$a;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/ironsource/e2$a;->c:[Lcom/ironsource/e2$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/e2$a;
    .registers 2

    const-class v0, Lcom/ironsource/e2$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ironsource/e2$a;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/e2$a;
    .registers 1

    sget-object v0, Lcom/ironsource/e2$a;->c:[Lcom/ironsource/e2$a;

    invoke-virtual {v0}, [Lcom/ironsource/e2$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/e2$a;

    return-object v0
.end method
