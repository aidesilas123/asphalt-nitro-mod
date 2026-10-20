###### Class com.bykv.vk.openvk.preload.a.f (com.bykv.vk.openvk.preload.a.f)
.class public final Lcom/bykv/vk/openvk/preload/a/f;
.super Ljava/lang/Object;
.source "Gson.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bykv/vk/openvk/preload/a/f$a;
    }
.end annotation


# static fields
.field private static final r:Lcom/bykv/vk/openvk/preload/a/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bykv/vk/openvk/preload/a/c/a<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bykv/vk/openvk/preload/a/u;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lcom/bykv/vk/openvk/preload/a/b/d;

.field final c:Lcom/bykv/vk/openvk/preload/a/e;

.field final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcom/bykv/vk/openvk/preload/a/h<",
            "*>;>;"
        }
    .end annotation
.end field

.field final e:Z

.field final f:Z

.field final g:Z

.field final h:Z

.field final i:Z

.field public final j:Z

.field final k:Z

.field final l:Ljava/lang/String;

.field final m:I

.field final n:I

.field final o:Lcom/bykv/vk/openvk/preload/a/s;

.field final p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bykv/vk/openvk/preload/a/u;",
            ">;"
        }
    .end annotation
.end field

.field final q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bykv/vk/openvk/preload/a/u;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Lcom/bykv/vk/openvk/preload/a/c/a<",
            "*>;",
            "Lcom/bykv/vk/openvk/preload/a/f$a<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private final t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/bykv/vk/openvk/preload/a/c/a<",
            "*>;",
            "Lcom/bykv/vk/openvk/preload/a/t<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final u:Lcom/bykv/vk/openvk/preload/a/b/c;

.field private final v:Lcom/bykv/vk/openvk/preload/a/b/a/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lcom/bykv/vk/openvk/preload/a/c/a;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/a/c/a;

    move-result-object v0

    sput-object v0, Lcom/bykv/vk/openvk/preload/a/f;->r:Lcom/bykv/vk/openvk/preload/a/c/a;

    return-void
.end method

.method public constructor <init>()V
    .registers 19

    move-object/from16 v0, p0

    sget-object v1, Lcom/bykv/vk/openvk/preload/a/b/d;->a:Lcom/bykv/vk/openvk/preload/a/b/d;

    sget-object v2, Lcom/bykv/vk/openvk/preload/a/d;->a:Lcom/bykv/vk/openvk/preload/a/d;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    sget-object v11, Lcom/bykv/vk/openvk/preload/a/s;->a:Lcom/bykv/vk/openvk/preload/a/s;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v15

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v16

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v17

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x2

    const/4 v14, 0x2

    invoke-direct/range {v0 .. v17}, Lcom/bykv/vk/openvk/preload/a/f;-><init>(Lcom/bykv/vk/openvk/preload/a/b/d;Lcom/bykv/vk/openvk/preload/a/e;Ljava/util/Map;ZZZZZZZLcom/bykv/vk/openvk/preload/a/s;Ljava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lcom/bykv/vk/openvk/preload/a/b/d;Lcom/bykv/vk/openvk/preload/a/e;Ljava/util/Map;ZZZZZZZLcom/bykv/vk/openvk/preload/a/s;Ljava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bykv/vk/openvk/preload/a/b/d;",
            "Lcom/bykv/vk/openvk/preload/a/e;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcom/bykv/vk/openvk/preload/a/h<",
            "*>;>;ZZZZZZZ",
            "Lcom/bykv/vk/openvk/preload/a/s;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Lcom/bykv/vk/openvk/preload/a/u;",
            ">;",
            "Ljava/util/List<",
            "Lcom/bykv/vk/openvk/preload/a/u;",
            ">;",
            "Ljava/util/List<",
            "Lcom/bykv/vk/openvk/preload/a/u;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p5

    move/from16 v5, p10

    move-object/from16 v6, p11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v7, Ljava/lang/ThreadLocal;

    invoke-direct {v7}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v7, v0, Lcom/bykv/vk/openvk/preload/a/f;->s:Ljava/lang/ThreadLocal;

    new-instance v7, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v7}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v7, v0, Lcom/bykv/vk/openvk/preload/a/f;->t:Ljava/util/Map;

    iput-object v1, v0, Lcom/bykv/vk/openvk/preload/a/f;->b:Lcom/bykv/vk/openvk/preload/a/b/d;

    iput-object v2, v0, Lcom/bykv/vk/openvk/preload/a/f;->c:Lcom/bykv/vk/openvk/preload/a/e;

    iput-object v3, v0, Lcom/bykv/vk/openvk/preload/a/f;->d:Ljava/util/Map;

    new-instance v7, Lcom/bykv/vk/openvk/preload/a/b/c;

    invoke-direct {v7, p3}, Lcom/bykv/vk/openvk/preload/a/b/c;-><init>(Ljava/util/Map;)V

    iput-object v7, v0, Lcom/bykv/vk/openvk/preload/a/f;->u:Lcom/bykv/vk/openvk/preload/a/b/c;

    move v3, p4

    iput-boolean v3, v0, Lcom/bykv/vk/openvk/preload/a/f;->e:Z

    iput-boolean v4, v0, Lcom/bykv/vk/openvk/preload/a/f;->f:Z

    move/from16 v3, p6

    iput-boolean v3, v0, Lcom/bykv/vk/openvk/preload/a/f;->g:Z

    move/from16 v3, p7

    iput-boolean v3, v0, Lcom/bykv/vk/openvk/preload/a/f;->h:Z

    move/from16 v3, p8

    iput-boolean v3, v0, Lcom/bykv/vk/openvk/preload/a/f;->i:Z

    move/from16 v3, p9

    iput-boolean v3, v0, Lcom/bykv/vk/openvk/preload/a/f;->j:Z

    iput-boolean v5, v0, Lcom/bykv/vk/openvk/preload/a/f;->k:Z

    iput-object v6, v0, Lcom/bykv/vk/openvk/preload/a/f;->o:Lcom/bykv/vk/openvk/preload/a/s;

    move-object/from16 v3, p12

    iput-object v3, v0, Lcom/bykv/vk/openvk/preload/a/f;->l:Ljava/lang/String;

    move/from16 v3, p13

    iput v3, v0, Lcom/bykv/vk/openvk/preload/a/f;->m:I

    move/from16 v3, p14

    iput v3, v0, Lcom/bykv/vk/openvk/preload/a/f;->n:I

    move-object/from16 v3, p15

    iput-object v3, v0, Lcom/bykv/vk/openvk/preload/a/f;->p:Ljava/util/List;

    move-object/from16 v3, p16

    iput-object v3, v0, Lcom/bykv/vk/openvk/preload/a/f;->q:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sget-object v8, Lcom/bykv/vk/openvk/preload/a/b/a/n;->Y:Lcom/bykv/vk/openvk/preload/a/u;

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v8, Lcom/bykv/vk/openvk/preload/a/b/a/h;->a:Lcom/bykv/vk/openvk/preload/a/u;

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v8, p17

    invoke-interface {v3, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v8, Lcom/bykv/vk/openvk/preload/a/b/a/n;->D:Lcom/bykv/vk/openvk/preload/a/u;

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v8, Lcom/bykv/vk/openvk/preload/a/b/a/n;->m:Lcom/bykv/vk/openvk/preload/a/u;

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v8, Lcom/bykv/vk/openvk/preload/a/b/a/n;->g:Lcom/bykv/vk/openvk/preload/a/u;

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v8, Lcom/bykv/vk/openvk/preload/a/b/a/n;->i:Lcom/bykv/vk/openvk/preload/a/u;

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v8, Lcom/bykv/vk/openvk/preload/a/b/a/n;->k:Lcom/bykv/vk/openvk/preload/a/u;

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v8, Lcom/bykv/vk/openvk/preload/a/s;->a:Lcom/bykv/vk/openvk/preload/a/s;

    if-ne v6, v8, :cond_8c

    sget-object v6, Lcom/bykv/vk/openvk/preload/a/b/a/n;->t:Lcom/bykv/vk/openvk/preload/a/t;

    goto :goto_91

    :cond_8c
    new-instance v6, Lcom/bykv/vk/openvk/preload/a/f$3;

    invoke-direct {v6}, Lcom/bykv/vk/openvk/preload/a/f$3;-><init>()V

    :goto_91
    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v9, Ljava/lang/Long;

    invoke-static {v8, v9, v6}, Lcom/bykv/vk/openvk/preload/a/b/a/n;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bykv/vk/openvk/preload/a/t;)Lcom/bykv/vk/openvk/preload/a/u;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v9, Ljava/lang/Double;

    if-eqz v5, :cond_a5

    sget-object v10, Lcom/bykv/vk/openvk/preload/a/b/a/n;->v:Lcom/bykv/vk/openvk/preload/a/t;

    goto :goto_aa

    :cond_a5
    new-instance v10, Lcom/bykv/vk/openvk/preload/a/f$1;

    invoke-direct {v10, p0}, Lcom/bykv/vk/openvk/preload/a/f$1;-><init>(Lcom/bykv/vk/openvk/preload/a/f;)V

    :goto_aa
    invoke-static {v8, v9, v10}, Lcom/bykv/vk/openvk/preload/a/b/a/n;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bykv/vk/openvk/preload/a/t;)Lcom/bykv/vk/openvk/preload/a/u;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v9, Ljava/lang/Float;

    if-eqz v5, :cond_ba

    sget-object v5, Lcom/bykv/vk/openvk/preload/a/b/a/n;->u:Lcom/bykv/vk/openvk/preload/a/t;

    goto :goto_bf

    :cond_ba
    new-instance v5, Lcom/bykv/vk/openvk/preload/a/f$2;

    invoke-direct {v5, p0}, Lcom/bykv/vk/openvk/preload/a/f$2;-><init>(Lcom/bykv/vk/openvk/preload/a/f;)V

    :goto_bf
    invoke-static {v8, v9, v5}, Lcom/bykv/vk/openvk/preload/a/b/a/n;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bykv/vk/openvk/preload/a/t;)Lcom/bykv/vk/openvk/preload/a/u;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/bykv/vk/openvk/preload/a/b/a/n;->x:Lcom/bykv/vk/openvk/preload/a/u;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/bykv/vk/openvk/preload/a/b/a/n;->o:Lcom/bykv/vk/openvk/preload/a/u;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/bykv/vk/openvk/preload/a/b/a/n;->q:Lcom/bykv/vk/openvk/preload/a/u;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v5, Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v8, Lcom/bykv/vk/openvk/preload/a/f$4;

    invoke-direct {v8, v6}, Lcom/bykv/vk/openvk/preload/a/f$4;-><init>(Lcom/bykv/vk/openvk/preload/a/t;)V

    invoke-virtual {v8}, Lcom/bykv/vk/openvk/preload/a/t;->a()Lcom/bykv/vk/openvk/preload/a/t;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/bykv/vk/openvk/preload/a/b/a/n;->a(Ljava/lang/Class;Lcom/bykv/vk/openvk/preload/a/t;)Lcom/bykv/vk/openvk/preload/a/u;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v5, Ljava/util/concurrent/atomic/AtomicLongArray;

    new-instance v8, Lcom/bykv/vk/openvk/preload/a/f$5;

    invoke-direct {v8, v6}, Lcom/bykv/vk/openvk/preload/a/f$5;-><init>(Lcom/bykv/vk/openvk/preload/a/t;)V

    invoke-virtual {v8}, Lcom/bykv/vk/openvk/preload/a/t;->a()Lcom/bykv/vk/openvk/preload/a/t;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/bykv/vk/openvk/preload/a/b/a/n;->a(Ljava/lang/Class;Lcom/bykv/vk/openvk/preload/a/t;)Lcom/bykv/vk/openvk/preload/a/u;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/bykv/vk/openvk/preload/a/b/a/n;->s:Lcom/bykv/vk/openvk/preload/a/u;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/bykv/vk/openvk/preload/a/b/a/n;->z:Lcom/bykv/vk/openvk/preload/a/u;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/bykv/vk/openvk/preload/a/b/a/n;->F:Lcom/bykv/vk/openvk/preload/a/u;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/bykv/vk/openvk/preload/a/b/a/n;->H:Lcom/bykv/vk/openvk/preload/a/u;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v5, Ljava/math/BigDecimal;

    sget-object v6, Lcom/bykv/vk/openvk/preload/a/b/a/n;->B:Lcom/bykv/vk/openvk/preload/a/t;

    invoke-static {v5, v6}, Lcom/bykv/vk/openvk/preload/a/b/a/n;->a(Ljava/lang/Class;Lcom/bykv/vk/openvk/preload/a/t;)Lcom/bykv/vk/openvk/preload/a/u;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v5, Ljava/math/BigInteger;

    sget-object v6, Lcom/bykv/vk/openvk/preload/a/b/a/n;->C:Lcom/bykv/vk/openvk/preload/a/t;

    invoke-static {v5, v6}, Lcom/bykv/vk/openvk/preload/a/b/a/n;->a(Ljava/lang/Class;Lcom/bykv/vk/openvk/preload/a/t;)Lcom/bykv/vk/openvk/preload/a/u;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/bykv/vk/openvk/preload/a/b/a/n;->J:Lcom/bykv/vk/openvk/preload/a/u;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/bykv/vk/openvk/preload/a/b/a/n;->L:Lcom/bykv/vk/openvk/preload/a/u;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/bykv/vk/openvk/preload/a/b/a/n;->P:Lcom/bykv/vk/openvk/preload/a/u;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/bykv/vk/openvk/preload/a/b/a/n;->R:Lcom/bykv/vk/openvk/preload/a/u;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/bykv/vk/openvk/preload/a/b/a/n;->W:Lcom/bykv/vk/openvk/preload/a/u;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/bykv/vk/openvk/preload/a/b/a/n;->N:Lcom/bykv/vk/openvk/preload/a/u;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/bykv/vk/openvk/preload/a/b/a/n;->d:Lcom/bykv/vk/openvk/preload/a/u;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/bykv/vk/openvk/preload/a/b/a/c;->a:Lcom/bykv/vk/openvk/preload/a/u;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/bykv/vk/openvk/preload/a/b/a/n;->U:Lcom/bykv/vk/openvk/preload/a/u;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/bykv/vk/openvk/preload/a/b/a/k;->a:Lcom/bykv/vk/openvk/preload/a/u;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/bykv/vk/openvk/preload/a/b/a/j;->a:Lcom/bykv/vk/openvk/preload/a/u;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/bykv/vk/openvk/preload/a/b/a/n;->S:Lcom/bykv/vk/openvk/preload/a/u;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/bykv/vk/openvk/preload/a/b/a/a;->a:Lcom/bykv/vk/openvk/preload/a/u;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/bykv/vk/openvk/preload/a/b/a/n;->b:Lcom/bykv/vk/openvk/preload/a/u;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/bykv/vk/openvk/preload/a/b/a/b;

    invoke-direct {v5, v7}, Lcom/bykv/vk/openvk/preload/a/b/a/b;-><init>(Lcom/bykv/vk/openvk/preload/a/b/c;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/bykv/vk/openvk/preload/a/b/a/g;

    invoke-direct {v5, v7, v4}, Lcom/bykv/vk/openvk/preload/a/b/a/g;-><init>(Lcom/bykv/vk/openvk/preload/a/b/c;Z)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/bykv/vk/openvk/preload/a/b/a/d;

    invoke-direct {v4, v7}, Lcom/bykv/vk/openvk/preload/a/b/a/d;-><init>(Lcom/bykv/vk/openvk/preload/a/b/c;)V

    iput-object v4, v0, Lcom/bykv/vk/openvk/preload/a/f;->v:Lcom/bykv/vk/openvk/preload/a/b/a/d;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/bykv/vk/openvk/preload/a/b/a/n;->Z:Lcom/bykv/vk/openvk/preload/a/u;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/bykv/vk/openvk/preload/a/b/a/i;

    invoke-direct {v5, v7, p2, p1, v4}, Lcom/bykv/vk/openvk/preload/a/b/a/i;-><init>(Lcom/bykv/vk/openvk/preload/a/b/c;Lcom/bykv/vk/openvk/preload/a/e;Lcom/bykv/vk/openvk/preload/a/b/d;Lcom/bykv/vk/openvk/preload/a/b/a/d;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/bykv/vk/openvk/preload/a/f;->a:Ljava/util/List;

    return-void
.end method

.method private a(Ljava/io/Writer;)Lcom/bykv/vk/openvk/preload/a/d/c;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bykv/vk/openvk/preload/a/f;->g:Z

    if-eqz v0, :cond_9

    const-string v0, ")]}\'\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_9
    new-instance v0, Lcom/bykv/vk/openvk/preload/a/d/c;

    invoke-direct {v0, p1}, Lcom/bykv/vk/openvk/preload/a/d/c;-><init>(Ljava/io/Writer;)V

    iget-boolean p1, p0, Lcom/bykv/vk/openvk/preload/a/f;->i:Z

    if-eqz p1, :cond_17

    const-string p1, "  "

    invoke-virtual {v0, p1}, Lcom/bykv/vk/openvk/preload/a/d/c;->c(Ljava/lang/String;)V

    :cond_17
    iget-boolean p1, p0, Lcom/bykv/vk/openvk/preload/a/f;->e:Z

    iput-boolean p1, v0, Lcom/bykv/vk/openvk/preload/a/d/c;->e:Z

    return-object v0
.end method

.method private a(Lcom/bykv/vk/openvk/preload/a/k;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/bykv/vk/openvk/preload/a/f;->a(Lcom/bykv/vk/openvk/preload/a/k;Ljava/lang/Appendable;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/bykv/vk/openvk/preload/a/f;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static a(D)V
    .registers 4

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Lcom/bykv/vk/openvk/preload/a/k;Lcom/bykv/vk/openvk/preload/a/d/c;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bykv/vk/openvk/preload/a/l;
        }
    .end annotation

    iget-boolean v0, p2, Lcom/bykv/vk/openvk/preload/a/d/c;->c:Z

    const/4 v1, 0x1

    iput-boolean v1, p2, Lcom/bykv/vk/openvk/preload/a/d/c;->c:Z

    iget-boolean v1, p2, Lcom/bykv/vk/openvk/preload/a/d/c;->d:Z

    iget-boolean v2, p0, Lcom/bykv/vk/openvk/preload/a/f;->h:Z

    iput-boolean v2, p2, Lcom/bykv/vk/openvk/preload/a/d/c;->d:Z

    iget-boolean v2, p2, Lcom/bykv/vk/openvk/preload/a/d/c;->e:Z

    iget-boolean v3, p0, Lcom/bykv/vk/openvk/preload/a/f;->e:Z

    iput-boolean v3, p2, Lcom/bykv/vk/openvk/preload/a/d/c;->e:Z

    :try_start_11
    invoke-static {p1, p2}, Lcom/bykv/vk/openvk/preload/a/b/k;->a(Lcom/bykv/vk/openvk/preload/a/k;Lcom/bykv/vk/openvk/preload/a/d/c;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_39
    .catch Ljava/lang/AssertionError; {:try_start_11 .. :try_end_14} :catch_1d
    .catchall {:try_start_11 .. :try_end_14} :catchall_1b

    iput-boolean v0, p2, Lcom/bykv/vk/openvk/preload/a/d/c;->c:Z

    iput-boolean v1, p2, Lcom/bykv/vk/openvk/preload/a/d/c;->d:Z

    iput-boolean v2, p2, Lcom/bykv/vk/openvk/preload/a/d/c;->e:Z

    return-void

    :catchall_1b
    move-exception p1

    goto :goto_40

    :catch_1d
    move-exception p1

    :try_start_1e
    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "AssertionError (GSON pangle-v3200): "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, p1}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v3

    :catch_39
    move-exception p1

    new-instance v3, Lcom/bykv/vk/openvk/preload/a/l;

    invoke-direct {v3, p1}, Lcom/bykv/vk/openvk/preload/a/l;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_40
    .catchall {:try_start_1e .. :try_end_40} :catchall_1b

    :goto_40
    iput-boolean v0, p2, Lcom/bykv/vk/openvk/preload/a/d/c;->c:Z

    iput-boolean v1, p2, Lcom/bykv/vk/openvk/preload/a/d/c;->d:Z

    iput-boolean v2, p2, Lcom/bykv/vk/openvk/preload/a/d/c;->e:Z

    throw p1
.end method

.method private a(Lcom/bykv/vk/openvk/preload/a/k;Ljava/lang/Appendable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bykv/vk/openvk/preload/a/l;
        }
    .end annotation

    :try_start_0
    invoke-static {p2}, Lcom/bykv/vk/openvk/preload/a/b/k;->a(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/bykv/vk/openvk/preload/a/f;->a(Ljava/io/Writer;)Lcom/bykv/vk/openvk/preload/a/d/c;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/bykv/vk/openvk/preload/a/f;->a(Lcom/bykv/vk/openvk/preload/a/k;Lcom/bykv/vk/openvk/preload/a/d/c;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception p1

    new-instance p2, Lcom/bykv/vk/openvk/preload/a/l;

    invoke-direct {p2, p1}, Lcom/bykv/vk/openvk/preload/a/l;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public static a(Ljava/lang/Object;Lcom/bykv/vk/openvk/preload/a/d/a;)V
    .registers 2

    if-eqz p0, :cond_21

    :try_start_2
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/a/d/a;->f()Lcom/bykv/vk/openvk/preload/a/d/b;

    move-result-object p0

    sget-object p1, Lcom/bykv/vk/openvk/preload/a/d/b;->j:Lcom/bykv/vk/openvk/preload/a/d/b;

    if-ne p0, p1, :cond_b

    goto :goto_21

    :cond_b
    new-instance p0, Lcom/bykv/vk/openvk/preload/a/l;

    const-string p1, "JSON document was not fully consumed."

    invoke-direct {p0, p1}, Lcom/bykv/vk/openvk/preload/a/l;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_13
    .catch Lcom/bykv/vk/openvk/preload/a/d/d; {:try_start_2 .. :try_end_13} :catch_1a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_13} :catch_13

    :catch_13
    move-exception p0

    new-instance p1, Lcom/bykv/vk/openvk/preload/a/l;

    invoke-direct {p1, p0}, Lcom/bykv/vk/openvk/preload/a/l;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1a
    move-exception p0

    new-instance p1, Lcom/bykv/vk/openvk/preload/a/r;

    invoke-direct {p1, p0}, Lcom/bykv/vk/openvk/preload/a/r;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_21
    :goto_21
    return-void
.end method

.method private a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/bykv/vk/openvk/preload/a/d/c;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bykv/vk/openvk/preload/a/l;
        }
    .end annotation

    invoke-static {p2}, Lcom/bykv/vk/openvk/preload/a/c/a;->a(Ljava/lang/reflect/Type;)Lcom/bykv/vk/openvk/preload/a/c/a;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/bykv/vk/openvk/preload/a/f;->a(Lcom/bykv/vk/openvk/preload/a/c/a;)Lcom/bykv/vk/openvk/preload/a/t;

    move-result-object p2

    iget-boolean v0, p3, Lcom/bykv/vk/openvk/preload/a/d/c;->c:Z

    const/4 v1, 0x1

    iput-boolean v1, p3, Lcom/bykv/vk/openvk/preload/a/d/c;->c:Z

    iget-boolean v1, p3, Lcom/bykv/vk/openvk/preload/a/d/c;->d:Z

    iget-boolean v2, p0, Lcom/bykv/vk/openvk/preload/a/f;->h:Z

    iput-boolean v2, p3, Lcom/bykv/vk/openvk/preload/a/d/c;->d:Z

    iget-boolean v2, p3, Lcom/bykv/vk/openvk/preload/a/d/c;->e:Z

    iget-boolean v3, p0, Lcom/bykv/vk/openvk/preload/a/f;->e:Z

    iput-boolean v3, p3, Lcom/bykv/vk/openvk/preload/a/d/c;->e:Z

    :try_start_19
    invoke-virtual {p2, p3, p1}, Lcom/bykv/vk/openvk/preload/a/t;->a(Lcom/bykv/vk/openvk/preload/a/d/c;Ljava/lang/Object;)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_41
    .catch Ljava/lang/AssertionError; {:try_start_19 .. :try_end_1c} :catch_25
    .catchall {:try_start_19 .. :try_end_1c} :catchall_23

    iput-boolean v0, p3, Lcom/bykv/vk/openvk/preload/a/d/c;->c:Z

    iput-boolean v1, p3, Lcom/bykv/vk/openvk/preload/a/d/c;->d:Z

    iput-boolean v2, p3, Lcom/bykv/vk/openvk/preload/a/d/c;->e:Z

    return-void

    :catchall_23
    move-exception p1

    goto :goto_48

    :catch_25
    move-exception p1

    :try_start_26
    new-instance p2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AssertionError (GSON pangle-v3200): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2

    :catch_41
    move-exception p1

    new-instance p2, Lcom/bykv/vk/openvk/preload/a/l;

    invoke-direct {p2, p1}, Lcom/bykv/vk/openvk/preload/a/l;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_48
    .catchall {:try_start_26 .. :try_end_48} :catchall_23

    :goto_48
    iput-boolean v0, p3, Lcom/bykv/vk/openvk/preload/a/d/c;->c:Z

    iput-boolean v1, p3, Lcom/bykv/vk/openvk/preload/a/d/c;->d:Z

    iput-boolean v2, p3, Lcom/bykv/vk/openvk/preload/a/d/c;->e:Z

    throw p1
.end method

.method private a(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bykv/vk/openvk/preload/a/l;
        }
    .end annotation

    :try_start_0
    invoke-static {p3}, Lcom/bykv/vk/openvk/preload/a/b/k;->a(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/bykv/vk/openvk/preload/a/f;->a(Ljava/io/Writer;)Lcom/bykv/vk/openvk/preload/a/d/c;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/bykv/vk/openvk/preload/a/f;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/bykv/vk/openvk/preload/a/d/c;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception p1

    new-instance p2, Lcom/bykv/vk/openvk/preload/a/l;

    invoke-direct {p2, p1}, Lcom/bykv/vk/openvk/preload/a/l;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public final a(Lcom/bykv/vk/openvk/preload/a/c/a;)Lcom/bykv/vk/openvk/preload/a/t;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bykv/vk/openvk/preload/a/c/a<",
            "TT;>;)",
            "Lcom/bykv/vk/openvk/preload/a/t<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/f;->t:Ljava/util/Map;

    if-nez p1, :cond_7

    sget-object v1, Lcom/bykv/vk/openvk/preload/a/f;->r:Lcom/bykv/vk/openvk/preload/a/c/a;

    goto :goto_8

    :cond_7
    move-object v1, p1

    :goto_8
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/preload/a/t;

    if-eqz v0, :cond_11

    return-object v0

    :cond_11
    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/f;->s:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_27

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/a/f;->s:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 v1, 0x1

    :cond_27
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bykv/vk/openvk/preload/a/f$a;

    if-eqz v2, :cond_30

    return-object v2

    :cond_30
    :try_start_30
    new-instance v2, Lcom/bykv/vk/openvk/preload/a/f$a;

    invoke-direct {v2}, Lcom/bykv/vk/openvk/preload/a/f$a;-><init>()V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/bykv/vk/openvk/preload/a/f;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bykv/vk/openvk/preload/a/u;

    invoke-interface {v4, p0, p1}, Lcom/bykv/vk/openvk/preload/a/u;->a(Lcom/bykv/vk/openvk/preload/a/f;Lcom/bykv/vk/openvk/preload/a/c/a;)Lcom/bykv/vk/openvk/preload/a/t;

    move-result-object v4

    if-eqz v4, :cond_3e

    iget-object v3, v2, Lcom/bykv/vk/openvk/preload/a/f$a;->a:Lcom/bykv/vk/openvk/preload/a/t;

    if-nez v3, :cond_66

    iput-object v4, v2, Lcom/bykv/vk/openvk/preload/a/f$a;->a:Lcom/bykv/vk/openvk/preload/a/t;

    iget-object v2, p0, Lcom/bykv/vk/openvk/preload/a/f;->t:Ljava/util/Map;

    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5b
    .catchall {:try_start_30 .. :try_end_5b} :catchall_7c

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_65

    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/a/f;->s:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_65
    return-object v4

    :cond_66
    :try_start_66
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_6c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "GSON (pangle-v3200) cannot handle "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_7c
    .catchall {:try_start_66 .. :try_end_7c} :catchall_7c

    :catchall_7c
    move-exception v2

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_87

    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/a/f;->s:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_87
    throw v2
.end method

.method public final a(Lcom/bykv/vk/openvk/preload/a/u;Lcom/bykv/vk/openvk/preload/a/c/a;)Lcom/bykv/vk/openvk/preload/a/t;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bykv/vk/openvk/preload/a/u;",
            "Lcom/bykv/vk/openvk/preload/a/c/a<",
            "TT;>;)",
            "Lcom/bykv/vk/openvk/preload/a/t<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/f;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/a/f;->v:Lcom/bykv/vk/openvk/preload/a/b/a/d;

    :cond_a
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/a/f;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bykv/vk/openvk/preload/a/u;

    if-nez v0, :cond_23

    if-ne v2, p1, :cond_11

    const/4 v0, 0x1

    goto :goto_11

    :cond_23
    invoke-interface {v2, p0, p2}, Lcom/bykv/vk/openvk/preload/a/u;->a(Lcom/bykv/vk/openvk/preload/a/f;Lcom/bykv/vk/openvk/preload/a/c/a;)Lcom/bykv/vk/openvk/preload/a/t;

    move-result-object v2

    if-eqz v2, :cond_11

    return-object v2

    :cond_2a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "GSON cannot serialize "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/a/t;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/bykv/vk/openvk/preload/a/t<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/bykv/vk/openvk/preload/a/c/a;->a(Ljava/lang/Class;)Lcom/bykv/vk/openvk/preload/a/c/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bykv/vk/openvk/preload/a/f;->a(Lcom/bykv/vk/openvk/preload/a/c/a;)Lcom/bykv/vk/openvk/preload/a/t;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/bykv/vk/openvk/preload/a/d/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bykv/vk/openvk/preload/a/d/a;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bykv/vk/openvk/preload/a/l;,
            Lcom/bykv/vk/openvk/preload/a/r;
        }
    .end annotation

    iget-boolean v0, p1, Lcom/bykv/vk/openvk/preload/a/d/a;->a:Z

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/bykv/vk/openvk/preload/a/d/a;->a:Z

    :try_start_5
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/a/d/a;->f()Lcom/bykv/vk/openvk/preload/a/d/b;

    const/4 v1, 0x0

    invoke-static {p2}, Lcom/bykv/vk/openvk/preload/a/c/a;->a(Ljava/lang/reflect/Type;)Lcom/bykv/vk/openvk/preload/a/c/a;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/bykv/vk/openvk/preload/a/f;->a(Lcom/bykv/vk/openvk/preload/a/c/a;)Lcom/bykv/vk/openvk/preload/a/t;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/bykv/vk/openvk/preload/a/t;->a(Lcom/bykv/vk/openvk/preload/a/d/a;)Ljava/lang/Object;

    move-result-object p2
    :try_end_15
    .catch Ljava/io/EOFException; {:try_start_5 .. :try_end_15} :catch_44
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_15} :catch_3d
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_15} :catch_36
    .catch Ljava/lang/AssertionError; {:try_start_5 .. :try_end_15} :catch_1a
    .catchall {:try_start_5 .. :try_end_15} :catchall_18

    iput-boolean v0, p1, Lcom/bykv/vk/openvk/preload/a/d/a;->a:Z

    return-object p2

    :catchall_18
    move-exception p2

    goto :goto_51

    :catch_1a
    move-exception p2

    :try_start_1b
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AssertionError (GSON pangle-v3200): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p2}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1

    :catch_36
    move-exception p2

    new-instance v1, Lcom/bykv/vk/openvk/preload/a/r;

    invoke-direct {v1, p2}, Lcom/bykv/vk/openvk/preload/a/r;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_3d
    move-exception p2

    new-instance v1, Lcom/bykv/vk/openvk/preload/a/r;

    invoke-direct {v1, p2}, Lcom/bykv/vk/openvk/preload/a/r;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_44
    .catchall {:try_start_1b .. :try_end_44} :catchall_18

    :catch_44
    move-exception p2

    if-eqz v1, :cond_4b

    iput-boolean v0, p1, Lcom/bykv/vk/openvk/preload/a/d/a;->a:Z

    const/4 p1, 0x0

    return-object p1

    :cond_4b
    :try_start_4b
    new-instance v1, Lcom/bykv/vk/openvk/preload/a/r;

    invoke-direct {v1, p2}, Lcom/bykv/vk/openvk/preload/a/r;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_51
    .catchall {:try_start_4b .. :try_end_51} :catchall_18

    :goto_51
    iput-boolean v0, p1, Lcom/bykv/vk/openvk/preload/a/d/a;->a:Z

    throw p2
.end method

.method public final a(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    if-nez p1, :cond_9

    sget-object p1, Lcom/bykv/vk/openvk/preload/a/m;->a:Lcom/bykv/vk/openvk/preload/a/m;

    invoke-direct {p0, p1}, Lcom/bykv/vk/openvk/preload/a/f;->a(Lcom/bykv/vk/openvk/preload/a/k;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/bykv/vk/openvk/preload/a/f;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{serializeNulls:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/bykv/vk/openvk/preload/a/f;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",factories:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/a/f;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",instanceCreators:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/a/f;->u:Lcom/bykv/vk/openvk/preload/a/b/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
