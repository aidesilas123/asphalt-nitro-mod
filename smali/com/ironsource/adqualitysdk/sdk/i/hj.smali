###### Class com.json.adqualitysdk.sdk.i.hj (com.ironsource.adqualitysdk.sdk.i.hj)
.class public Lcom/ironsource/adqualitysdk/sdk/i/hj;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/adqualitysdk/sdk/i/hj$b;
    }
.end annotation


# instance fields
.field private a:Lcom/ironsource/adqualitysdk/sdk/i/hj$b;

.field private b:Lcom/ironsource/adqualitysdk/sdk/i/hl;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/Class;Lcom/ironsource/adqualitysdk/sdk/i/hl;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Lcom/ironsource/adqualitysdk/sdk/i/hl;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lcom/ironsource/adqualitysdk/sdk/i/hj;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hj;->a:Lcom/ironsource/adqualitysdk/sdk/i/hj$b;

    if-nez v1, :cond_e

    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/hj$b;

    invoke-direct {v1, p0}, Lcom/ironsource/adqualitysdk/sdk/i/hj$b;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/hj;)V

    iput-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hj;->a:Lcom/ironsource/adqualitysdk/sdk/i/hj$b;

    :cond_e
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hj;->a:Lcom/ironsource/adqualitysdk/sdk/i/hj$b;

    invoke-virtual {v1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/hj$b;->ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/hl;)V

    iget-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/hj;->a:Lcom/ironsource/adqualitysdk/sdk/i/hj$b;

    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/adqualitysdk/sdk/i/hj;->b(Ljava/lang/Class;Lcom/ironsource/adqualitysdk/sdk/i/hj$b;Ljava/util/List;)V

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method private b(Ljava/lang/Class;Lcom/ironsource/adqualitysdk/sdk/i/hj$b;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Lcom/ironsource/adqualitysdk/sdk/i/hj$b;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/ironsource/adqualitysdk/sdk/i/hj$b;->ﾇ()Lcom/ironsource/adqualitysdk/sdk/i/hl;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/hj;->c(Ljava/lang/Class;Lcom/ironsource/adqualitysdk/sdk/i/hl;)[Ljava/lang/reflect/Field;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1e

    aget-object v2, p1, v1

    invoke-virtual {p2, v2}, Lcom/ironsource/adqualitysdk/sdk/i/hj$b;->ﾒ(Ljava/lang/reflect/Field;)Z

    move-result v3

    if-eqz v3, :cond_1b

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1e
    return-void
.end method

.method private static c(Ljava/lang/Class;Lcom/ironsource/adqualitysdk/sdk/i/hl;)[Ljava/lang/reflect/Field;
    .registers 4

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/hh;->ﻛ()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/hh;->ﻛ()Z

    move-result v0

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/hh;->ﾒ()I

    move-result p1

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lcom/ironsource/adqualitysdk/sdk/i/hj;->ｋ(Ljava/lang/Class;ZILjava/util/List;)[Ljava/lang/reflect/Field;

    move-result-object p0

    return-object p0

    :cond_16
    :try_start_16
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_1a
    .catch Ljava/lang/Error; {:try_start_16 .. :try_end_1a} :catch_1b

    return-object p0

    :catch_1b
    invoke-virtual {p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object p0

    return-object p0
.end method

.method public static ｋ(Ljava/lang/Class;ZILjava/util/List;)[Ljava/lang/reflect/Field;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "ZI",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    :goto_0
    if-eqz p0, :cond_d

    invoke-static {p0, p3}, Lcom/ironsource/adqualitysdk/sdk/i/jw;->ｋ(Ljava/lang/Class;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    :cond_d
    const/4 p3, 0x0

    new-array v0, p3, [Ljava/lang/reflect/Field;

    if-eqz p0, :cond_47

    new-array v0, p3, [Ljava/lang/reflect/Field;

    new-array v1, p3, [Ljava/lang/reflect/Field;

    :try_start_16
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_1a
    .catch Ljava/lang/Error; {:try_start_16 .. :try_end_1a} :catch_1a

    :catch_1a
    :try_start_1a
    invoke-virtual {p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v1
    :try_end_1e
    .catch Ljava/lang/Error; {:try_start_1a .. :try_end_1e} :catch_1f

    goto :goto_20

    :catch_1f
    nop

    :goto_20
    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/jw;->ﻐ([Ljava/lang/reflect/Field;[Ljava/lang/reflect/Field;)[Ljava/lang/reflect/Field;

    move-result-object v0

    if-nez p1, :cond_27

    return-object v0

    :cond_27
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    :goto_2b
    if-eqz p0, :cond_47

    if-eq p3, p2, :cond_47

    :try_start_2f
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/jw;->ﻐ([Ljava/lang/reflect/Field;[Ljava/lang/reflect/Field;)[Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_37
    .catch Ljava/lang/Error; {:try_start_2f .. :try_end_37} :catch_37

    :catch_37
    :try_start_37
    invoke-virtual {p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/jw;->ﻐ([Ljava/lang/reflect/Field;[Ljava/lang/reflect/Field;)[Ljava/lang/reflect/Field;

    move-result-object p1
    :try_end_3f
    .catch Ljava/lang/Error; {:try_start_37 .. :try_end_3f} :catch_40

    move-object v0, p1

    :catch_40
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    add-int/lit8 p3, p3, 0x1

    goto :goto_2b

    :cond_47
    return-object v0
.end method

.method public static ﾇ()Lcom/ironsource/adqualitysdk/sdk/i/hl$c;
    .registers 1

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/hl$c;

    invoke-direct {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hl$c;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final ｋ(Ljava/lang/Class;Lcom/ironsource/adqualitysdk/sdk/i/hl;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Lcom/ironsource/adqualitysdk/sdk/i/hl;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/ironsource/adqualitysdk/sdk/i/hj;->a(Ljava/lang/Class;Lcom/ironsource/adqualitysdk/sdk/i/hl;Ljava/util/List;)V

    return-object v0
.end method

.method public final ﾇ(Ljava/lang/Class;Lcom/ironsource/adqualitysdk/sdk/i/hl;)Ljava/lang/reflect/Field;
    .registers 5

    const-class v0, Lcom/ironsource/adqualitysdk/sdk/i/jt;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hj;->c:Ljava/util/List;

    if-nez v1, :cond_e

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hj;->c:Ljava/util/List;

    :cond_e
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hj;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hj;->c:Ljava/util/List;

    invoke-direct {p0, p1, p2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/hj;->a(Ljava/lang/Class;Lcom/ironsource/adqualitysdk/sdk/i/hl;Ljava/util/List;)V

    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hj;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2b

    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hj;->c:Ljava/util/List;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Field;

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_2e

    return-object p1

    :cond_2b
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :catchall_2e
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final ﾇ(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Field;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    const-class v0, Lcom/ironsource/adqualitysdk/sdk/i/jt;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hj;->b:Lcom/ironsource/adqualitysdk/sdk/i/hl;

    if-nez v1, :cond_e

    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/hl;

    invoke-direct {v1}, Lcom/ironsource/adqualitysdk/sdk/i/hl;-><init>()V

    iput-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hj;->b:Lcom/ironsource/adqualitysdk/sdk/i/hl;

    :cond_e
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hj;->b:Lcom/ironsource/adqualitysdk/sdk/i/hl;

    invoke-virtual {v1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/hl;->ﾒ(Ljava/lang/Class;)V

    iget-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/hj;->b:Lcom/ironsource/adqualitysdk/sdk/i/hl;

    invoke-virtual {p0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/hj;->ﾇ(Ljava/lang/Class;Lcom/ironsource/adqualitysdk/sdk/i/hl;)Ljava/lang/reflect/Field;

    move-result-object p1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1b

    return-object p1

    :catchall_1b
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final ﾇ(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 5

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/hj$a;

    invoke-direct {v0, p0, p2}, Lcom/ironsource/adqualitysdk/sdk/i/hj$a;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/hj;Ljava/lang/String;)V

    const-class p2, Lcom/ironsource/adqualitysdk/sdk/i/hj;

    monitor-enter p2

    :try_start_8
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hj;->c:Ljava/util/List;

    if-nez v1, :cond_13

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hj;->c:Ljava/util/List;

    :cond_13
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hj;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hj;->c:Ljava/util/List;

    invoke-direct {p0, p1, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/hj;->b(Ljava/lang/Class;Lcom/ironsource/adqualitysdk/sdk/i/hj$b;Ljava/util/List;)V

    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hj;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_30

    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hj;->c:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Field;

    monitor-exit p2
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_33

    return-object p1

    :cond_30
    monitor-exit p2

    const/4 p1, 0x0

    return-object p1

    :catchall_33
    move-exception p1

    monitor-exit p2

    throw p1
.end method

###### Class com.ironsource.adqualitysdk.sdk.i.hj.a (com.ironsource.adqualitysdk.sdk.i.hj$a)
.class final Lcom/ironsource/adqualitysdk/sdk/i/hj$a;
.super Lcom/ironsource/adqualitysdk/sdk/i/hj$b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/hj;->ﾇ(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/hj;Ljava/lang/String;)V
    .registers 3

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/hj$a;->c:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/hj$b;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/hj;)V

    return-void
.end method


# virtual methods
.method public final ﾒ(Ljava/lang/reflect/Field;)Z
    .registers 3

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hj$a;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

###### Class com.ironsource.adqualitysdk.sdk.i.hj.b (com.ironsource.adqualitysdk.sdk.i.hj$b)
.class Lcom/ironsource/adqualitysdk/sdk/i/hj$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adqualitysdk/sdk/i/hj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/ironsource/adqualitysdk/sdk/i/hl;

.field private b:I


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/hj;)V
    .registers 2

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/hj$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾇ()Lcom/ironsource/adqualitysdk/sdk/i/hl;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hj$b;->a:Lcom/ironsource/adqualitysdk/sdk/i/hl;

    return-object v0
.end method

.method public final ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/hl;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hj$b;->a:Lcom/ironsource/adqualitysdk/sdk/i/hl;

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/hl;->ﱟ()I

    move-result p1

    iput p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hj$b;->b:I

    return-void
.end method

.method public ﾒ(Ljava/lang/reflect/Field;)Z
    .registers 5

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hj$b;->a:Lcom/ironsource/adqualitysdk/sdk/i/hl;

    const/4 v1, 0x0

    if-eqz v0, :cond_68

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/hj$b;->a:Lcom/ironsource/adqualitysdk/sdk/i/hl;

    invoke-virtual {v2}, Lcom/ironsource/adqualitysdk/sdk/i/hh;->ﻐ()I

    move-result v2

    and-int/2addr v0, v2

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/hj$b;->a:Lcom/ironsource/adqualitysdk/sdk/i/hl;

    invoke-virtual {v2}, Lcom/ironsource/adqualitysdk/sdk/i/hh;->ﻐ()I

    move-result v2

    if-ne v0, v2, :cond_68

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/hj$b;->a:Lcom/ironsource/adqualitysdk/sdk/i/hl;

    invoke-virtual {v2}, Lcom/ironsource/adqualitysdk/sdk/i/hh;->ﾇ()I

    move-result v2

    and-int/2addr v0, v2

    if-eqz v0, :cond_26

    goto :goto_68

    :cond_26
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hj$b;->a:Lcom/ironsource/adqualitysdk/sdk/i/hl;

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hl;->ﱡ()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    return v1

    :cond_37
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hj$b;->a:Lcom/ironsource/adqualitysdk/sdk/i/hl;

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hl;->ﻏ()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p1

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hj$b;->a:Lcom/ironsource/adqualitysdk/sdk/i/hl;

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hl;->ﺙ()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_5c

    :cond_4e
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hj$b;->a:Lcom/ironsource/adqualitysdk/sdk/i/hl;

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/hl;->ﺙ()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    :goto_5c
    if-eqz p1, :cond_68

    iget p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hj$b;->b:I

    const/4 v0, 0x1

    if-nez p1, :cond_64

    return v0

    :cond_64
    sub-int/2addr p1, v0

    iput p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/hj$b;->b:I

    nop

    :cond_68
    :goto_68
    return v1
.end method
