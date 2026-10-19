###### Class com.applovin.exoplayer2.e.f (com.applovin.exoplayer2.e.f)
.class public final Lcom/applovin/exoplayer2/e/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/e/l;


# static fields
.field private static final ug:[I

.field private static final uh:Ljava/lang/reflect/Constructor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lcom/applovin/exoplayer2/e/h;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ui:Z

.field private uj:Z

.field private uk:I

.field private ul:I

.field private um:I

.field private un:I

.field private uo:I

.field private uq:I

.field private ur:I

.field private us:I

.field private ut:I

.field private uu:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_4c

    sput-object v0, Lcom/applovin/exoplayer2/e/f;->ug:[I

    const/4 v0, 0x0

    :try_start_a
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "com.applovin.exoplayer2.ext.flac.FlacLibrary"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "isAvailable"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    const-string v1, "com.applovin.exoplayer2.ext.flac.FlacExtractor"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/applovin/exoplayer2/e/h;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_3e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_3e} :catch_48
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_3e} :catch_3f

    goto :goto_48

    :catch_3f
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error instantiating FLAC extension"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_48
    :cond_48
    :goto_48
    sput-object v0, Lcom/applovin/exoplayer2/e/f;->uh:Ljava/lang/reflect/Constructor;

    return-void

    nop

    :array_4c
    .array-data 4
        0x5
        0x4
        0xc
        0x8
        0x3
        0xa
        0x9
        0xb
        0x6
        0x2
        0x0
        0x1
        0x7
        0xe
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/applovin/exoplayer2/e/f;->us:I

    const v0, 0x1b8a0

    iput v0, p0, Lcom/applovin/exoplayer2/e/f;->uu:I

    return-void
.end method

.method private b(ILjava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/applovin/exoplayer2/e/h;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_ea

    :pswitch_5
    goto/16 :goto_e8

    :pswitch_7
    new-instance p1, Lcom/applovin/exoplayer2/e/d/a;

    invoke-direct {p1}, Lcom/applovin/exoplayer2/e/d/a;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e8

    :pswitch_11
    new-instance p1, Lcom/applovin/exoplayer2/e/j/a;

    invoke-direct {p1}, Lcom/applovin/exoplayer2/e/j/a;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e8

    :pswitch_1b
    new-instance p1, Lcom/applovin/exoplayer2/e/i/ac;

    iget v0, p0, Lcom/applovin/exoplayer2/e/f;->us:I

    iget v1, p0, Lcom/applovin/exoplayer2/e/f;->ut:I

    iget v2, p0, Lcom/applovin/exoplayer2/e/f;->uu:I

    invoke-direct {p1, v0, v1, v2}, Lcom/applovin/exoplayer2/e/i/ac;-><init>(III)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e8

    :pswitch_2b
    new-instance p1, Lcom/applovin/exoplayer2/e/i/w;

    invoke-direct {p1}, Lcom/applovin/exoplayer2/e/i/w;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e8

    :pswitch_35
    new-instance p1, Lcom/applovin/exoplayer2/e/h/c;

    invoke-direct {p1}, Lcom/applovin/exoplayer2/e/h/c;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e8

    :pswitch_3f
    new-instance p1, Lcom/applovin/exoplayer2/e/g/e;

    iget v0, p0, Lcom/applovin/exoplayer2/e/f;->uq:I

    invoke-direct {p1, v0}, Lcom/applovin/exoplayer2/e/g/e;-><init>(I)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/applovin/exoplayer2/e/g/g;

    iget v0, p0, Lcom/applovin/exoplayer2/e/f;->uo:I

    invoke-direct {p1, v0}, Lcom/applovin/exoplayer2/e/g/g;-><init>(I)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e8

    :pswitch_55
    new-instance p1, Lcom/applovin/exoplayer2/e/f/d;

    iget v2, p0, Lcom/applovin/exoplayer2/e/f;->ur:I

    iget-boolean v3, p0, Lcom/applovin/exoplayer2/e/f;->ui:Z

    or-int/2addr v2, v3

    iget-boolean v3, p0, Lcom/applovin/exoplayer2/e/f;->uj:Z

    if-eqz v3, :cond_61

    goto :goto_62

    :cond_61
    const/4 v0, 0x0

    :goto_62
    or-int/2addr v0, v2

    invoke-direct {p1, v0}, Lcom/applovin/exoplayer2/e/f/d;-><init>(I)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e8

    :pswitch_6b
    new-instance p1, Lcom/applovin/exoplayer2/e/e/d;

    iget v0, p0, Lcom/applovin/exoplayer2/e/f;->un:I

    invoke-direct {p1, v0}, Lcom/applovin/exoplayer2/e/e/d;-><init>(I)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e8

    :pswitch_77
    new-instance p1, Lcom/applovin/exoplayer2/e/c/b;

    invoke-direct {p1}, Lcom/applovin/exoplayer2/e/c/b;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e8

    :pswitch_80
    sget-object p1, Lcom/applovin/exoplayer2/e/f;->uh:Ljava/lang/reflect/Constructor;

    if-eqz p1, :cond_a2

    const/4 v0, 0x1

    :try_start_85
    new-array v0, v0, [Ljava/lang/Object;

    iget v2, p0, Lcom/applovin/exoplayer2/e/f;->um:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/exoplayer2/e/h;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_98} :catch_99

    goto :goto_e8

    :catch_99
    move-exception p1

    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Unexpected error creating FLAC extractor"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_a2
    new-instance p1, Lcom/applovin/exoplayer2/e/b/b;

    iget v0, p0, Lcom/applovin/exoplayer2/e/f;->um:I

    invoke-direct {p1, v0}, Lcom/applovin/exoplayer2/e/b/b;-><init>(I)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e8

    :pswitch_ad
    new-instance p1, Lcom/applovin/exoplayer2/e/a/a;

    iget v2, p0, Lcom/applovin/exoplayer2/e/f;->ul:I

    iget-boolean v3, p0, Lcom/applovin/exoplayer2/e/f;->ui:Z

    or-int/2addr v2, v3

    iget-boolean v3, p0, Lcom/applovin/exoplayer2/e/f;->uj:Z

    if-eqz v3, :cond_b9

    goto :goto_ba

    :cond_b9
    const/4 v0, 0x0

    :goto_ba
    or-int/2addr v0, v2

    invoke-direct {p1, v0}, Lcom/applovin/exoplayer2/e/a/a;-><init>(I)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e8

    :pswitch_c2
    new-instance p1, Lcom/applovin/exoplayer2/e/i/e;

    iget v2, p0, Lcom/applovin/exoplayer2/e/f;->uk:I

    iget-boolean v3, p0, Lcom/applovin/exoplayer2/e/f;->ui:Z

    or-int/2addr v2, v3

    iget-boolean v3, p0, Lcom/applovin/exoplayer2/e/f;->uj:Z

    if-eqz v3, :cond_ce

    goto :goto_cf

    :cond_ce
    const/4 v0, 0x0

    :goto_cf
    or-int/2addr v0, v2

    invoke-direct {p1, v0}, Lcom/applovin/exoplayer2/e/i/e;-><init>(I)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e8

    :pswitch_d7
    new-instance p1, Lcom/applovin/exoplayer2/e/i/c;

    invoke-direct {p1}, Lcom/applovin/exoplayer2/e/i/c;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e8

    :pswitch_e0
    new-instance p1, Lcom/applovin/exoplayer2/e/i/a;

    invoke-direct {p1}, Lcom/applovin/exoplayer2/e/i/a;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_e8
    return-void

    nop

    :pswitch_data_ea
    .packed-switch 0x0
        :pswitch_e0
        :pswitch_d7
        :pswitch_c2
        :pswitch_ad
        :pswitch_80
        :pswitch_77
        :pswitch_6b
        :pswitch_55
        :pswitch_3f
        :pswitch_35
        :pswitch_2b
        :pswitch_1b
        :pswitch_11
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public declared-synchronized a(Landroid/net/Uri;Ljava/util/Map;)[Lcom/applovin/exoplayer2/e/h;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)[",
            "Lcom/applovin/exoplayer2/e/h;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {p2}, Lcom/applovin/exoplayer2/l/l;->e(Ljava/util/Map;)I

    move-result p2

    const/4 v1, -0x1

    if-eq p2, v1, :cond_12

    invoke-direct {p0, p2, v0}, Lcom/applovin/exoplayer2/e/f;->b(ILjava/util/List;)V

    :cond_12
    invoke-static {p1}, Lcom/applovin/exoplayer2/l/l;->g(Landroid/net/Uri;)I

    move-result p1

    if-eq p1, v1, :cond_1d

    if-eq p1, p2, :cond_1d

    invoke-direct {p0, p1, v0}, Lcom/applovin/exoplayer2/e/f;->b(ILjava/util/List;)V

    :cond_1d
    sget-object v1, Lcom/applovin/exoplayer2/e/f;->ug:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_21
    if-ge v3, v2, :cond_2f

    aget v4, v1, v3

    if-eq v4, p2, :cond_2c

    if-eq v4, p1, :cond_2c

    invoke-direct {p0, v4, v0}, Lcom/applovin/exoplayer2/e/f;->b(ILjava/util/List;)V

    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_2f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/applovin/exoplayer2/e/h;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/applovin/exoplayer2/e/h;
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_3d

    monitor-exit p0

    return-object p1

    :catchall_3d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized createExtractors()[Lcom/applovin/exoplayer2/e/h;
    .registers 3

    monitor-enter p0

    :try_start_1
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/applovin/exoplayer2/e/f;->a(Landroid/net/Uri;Ljava/util/Map;)[Lcom/applovin/exoplayer2/e/h;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-object v0

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method
