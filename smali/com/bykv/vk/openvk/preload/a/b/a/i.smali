###### Class com.bykv.vk.openvk.preload.a.b.a.i (com.bykv.vk.openvk.preload.a.b.a.i)
.class public final Lcom/bykv/vk/openvk/preload/a/b/a/i;
.super Ljava/lang/Object;
.source "ReflectiveTypeAdapterFactory.java"

# interfaces
.implements Lcom/bykv/vk/openvk/preload/a/u;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bykv/vk/openvk/preload/a/b/a/i$a;,
        Lcom/bykv/vk/openvk/preload/a/b/a/i$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/bykv/vk/openvk/preload/a/b/c;

.field private final b:Lcom/bykv/vk/openvk/preload/a/e;

.field private final c:Lcom/bykv/vk/openvk/preload/a/b/d;

.field private final d:Lcom/bykv/vk/openvk/preload/a/b/a/d;

.field private final e:Lcom/bykv/vk/openvk/preload/a/b/b/b;


# direct methods
.method public constructor <init>(Lcom/bykv/vk/openvk/preload/a/b/c;Lcom/bykv/vk/openvk/preload/a/e;Lcom/bykv/vk/openvk/preload/a/b/d;Lcom/bykv/vk/openvk/preload/a/b/a/d;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/bykv/vk/openvk/preload/a/b/b/b;->a()Lcom/bykv/vk/openvk/preload/a/b/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/a/b/a/i;->e:Lcom/bykv/vk/openvk/preload/a/b/b/b;

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/a/b/a/i;->a:Lcom/bykv/vk/openvk/preload/a/b/c;

    iput-object p2, p0, Lcom/bykv/vk/openvk/preload/a/b/a/i;->b:Lcom/bykv/vk/openvk/preload/a/e;

    iput-object p3, p0, Lcom/bykv/vk/openvk/preload/a/b/a/i;->c:Lcom/bykv/vk/openvk/preload/a/b/d;

    iput-object p4, p0, Lcom/bykv/vk/openvk/preload/a/b/a/i;->d:Lcom/bykv/vk/openvk/preload/a/b/a/d;

    return-void
.end method

.method private a(Ljava/lang/reflect/Field;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/bykv/vk/openvk/preload/a/a/c;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/preload/a/a/c;

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/b/a/i;->b:Lcom/bykv/vk/openvk/preload/a/e;

    invoke-interface {v0, p1}, Lcom/bykv/vk/openvk/preload/a/e;->a(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_15
    invoke-interface {v0}, Lcom/bykv/vk/openvk/preload/a/a/c;->a()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0}, Lcom/bykv/vk/openvk/preload/a/a/c;->b()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_25

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_25
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    array-length p1, v0

    const/4 v2, 0x0

    :goto_32
    if-ge v2, p1, :cond_3c

    aget-object v3, v0, v2

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    :cond_3c
    return-object v1
.end method

.method private a(Lcom/bykv/vk/openvk/preload/a/f;Lcom/bykv/vk/openvk/preload/a/c/a;Ljava/lang/Class;)Ljava/util/Map;
    .registers 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bykv/vk/openvk/preload/a/f;",
            "Lcom/bykv/vk/openvk/preload/a/c/a<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bykv/vk/openvk/preload/a/b/a/i$b;",
            ">;"
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    new-instance v13, Ljava/util/LinkedHashMap;

    invoke-direct {v13}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_10

    return-object v13

    :cond_10
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/bykv/vk/openvk/preload/a/c/a;->c:Ljava/lang/reflect/Type;

    move-object/from16 v10, p3

    move-object v15, v0

    :goto_17
    const-class v0, Ljava/lang/Object;

    if-eq v10, v0, :cond_151

    invoke-virtual {v10}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v9

    array-length v8, v9

    const/4 v7, 0x0

    const/4 v6, 0x0

    :goto_22
    if-ge v6, v8, :cond_137

    aget-object v5, v9, v6

    const/4 v4, 0x1

    invoke-direct {v11, v5, v4}, Lcom/bykv/vk/openvk/preload/a/b/a/i;->a(Ljava/lang/reflect/Field;Z)Z

    move-result v0

    invoke-direct {v11, v5, v7}, Lcom/bykv/vk/openvk/preload/a/b/a/i;->a(Ljava/lang/reflect/Field;Z)Z

    move-result v16

    if-nez v0, :cond_44

    if-eqz v16, :cond_34

    goto :goto_44

    :cond_34
    move/from16 v30, v6

    move/from16 v23, v8

    move-object/from16 v31, v9

    move-object/from16 p3, v10

    move-object/from16 v20, v14

    move-object/from16 p2, v15

    const/16 v21, 0x0

    goto/16 :goto_108

    :cond_44
    :goto_44
    iget-object v1, v11, Lcom/bykv/vk/openvk/preload/a/b/a/i;->e:Lcom/bykv/vk/openvk/preload/a/b/b/b;

    invoke-virtual {v1, v5}, Lcom/bykv/vk/openvk/preload/a/b/b/b;->a(Ljava/lang/reflect/AccessibleObject;)V

    iget-object v1, v15, Lcom/bykv/vk/openvk/preload/a/c/a;->c:Ljava/lang/reflect/Type;

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v1, v10, v2}, Lcom/bykv/vk/openvk/preload/a/b/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v17

    invoke-direct {v11, v5}, Lcom/bykv/vk/openvk/preload/a/b/a/i;->a(Ljava/lang/reflect/Field;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    const/16 v18, 0x0

    move-object/from16 p2, v15

    move-object/from16 v15, v18

    const/4 v1, 0x0

    :goto_62
    if-ge v1, v2, :cond_fa

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v20, v14

    move-object/from16 v14, v19

    check-cast v14, Ljava/lang/String;

    if-eqz v1, :cond_73

    const/16 v19, 0x0

    goto :goto_75

    :cond_73
    move/from16 v19, v0

    :goto_75
    invoke-static/range {v17 .. v17}, Lcom/bykv/vk/openvk/preload/a/c/a;->a(Ljava/lang/reflect/Type;)Lcom/bykv/vk/openvk/preload/a/c/a;

    move-result-object v0

    iget-object v4, v0, Lcom/bykv/vk/openvk/preload/a/c/a;->b:Ljava/lang/Class;

    instance-of v7, v4, Ljava/lang/Class;

    if-eqz v7, :cond_88

    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-eqz v4, :cond_88

    const/16 v22, 0x1

    goto :goto_8a

    :cond_88
    const/16 v22, 0x0

    :goto_8a
    const-class v4, Lcom/bykv/vk/openvk/preload/a/a/b;

    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/bykv/vk/openvk/preload/a/a/b;

    if-eqz v4, :cond_9b

    iget-object v7, v11, Lcom/bykv/vk/openvk/preload/a/b/a/i;->a:Lcom/bykv/vk/openvk/preload/a/b/c;

    invoke-static {v7, v12, v0, v4}, Lcom/bykv/vk/openvk/preload/a/b/a/d;->a(Lcom/bykv/vk/openvk/preload/a/b/c;Lcom/bykv/vk/openvk/preload/a/f;Lcom/bykv/vk/openvk/preload/a/c/a;Lcom/bykv/vk/openvk/preload/a/a/b;)Lcom/bykv/vk/openvk/preload/a/t;

    move-result-object v4

    goto :goto_9d

    :cond_9b
    move-object/from16 v4, v18

    :goto_9d
    if-eqz v4, :cond_a1

    const/4 v7, 0x1

    goto :goto_a2

    :cond_a1
    const/4 v7, 0x0

    :goto_a2
    if-nez v4, :cond_a8

    invoke-virtual {v12, v0}, Lcom/bykv/vk/openvk/preload/a/f;->a(Lcom/bykv/vk/openvk/preload/a/c/a;)Lcom/bykv/vk/openvk/preload/a/t;

    move-result-object v4

    :cond_a8
    move-object/from16 v23, v4

    new-instance v4, Lcom/bykv/vk/openvk/preload/a/b/a/i$1;

    move-object/from16 v24, v0

    move-object v0, v4

    move/from16 v25, v1

    move-object/from16 v1, p0

    move/from16 v26, v2

    move-object v2, v14

    move-object/from16 v27, v3

    move/from16 v3, v19

    move-object v11, v4

    const/16 v28, 0x1

    move/from16 v4, v16

    move-object/from16 v29, v5

    move/from16 v30, v6

    move v6, v7

    const/16 v21, 0x0

    move-object/from16 v7, v23

    move/from16 v23, v8

    move-object/from16 v8, p1

    move-object/from16 v31, v9

    move-object/from16 v9, v24

    move-object/from16 p3, v10

    move/from16 v10, v22

    invoke-direct/range {v0 .. v10}, Lcom/bykv/vk/openvk/preload/a/b/a/i$1;-><init>(Lcom/bykv/vk/openvk/preload/a/b/a/i;Ljava/lang/String;ZZLjava/lang/reflect/Field;ZLcom/bykv/vk/openvk/preload/a/t;Lcom/bykv/vk/openvk/preload/a/f;Lcom/bykv/vk/openvk/preload/a/c/a;Z)V

    invoke-interface {v13, v14, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/preload/a/b/a/i$b;

    if-nez v15, :cond_e0

    move-object v15, v0

    :cond_e0
    add-int/lit8 v1, v25, 0x1

    move-object/from16 v11, p0

    move-object/from16 v10, p3

    move/from16 v0, v19

    move-object/from16 v14, v20

    move/from16 v8, v23

    move/from16 v2, v26

    move-object/from16 v3, v27

    move-object/from16 v5, v29

    move/from16 v6, v30

    move-object/from16 v9, v31

    const/4 v4, 0x1

    const/4 v7, 0x0

    goto/16 :goto_62

    :cond_fa
    move/from16 v30, v6

    move/from16 v23, v8

    move-object/from16 v31, v9

    move-object/from16 p3, v10

    move-object/from16 v20, v14

    const/16 v21, 0x0

    if-nez v15, :cond_119

    :goto_108
    add-int/lit8 v6, v30, 0x1

    move-object/from16 v11, p0

    move-object/from16 v15, p2

    move-object/from16 v10, p3

    move-object/from16 v14, v20

    move/from16 v8, v23

    move-object/from16 v9, v31

    const/4 v7, 0x0

    goto/16 :goto_22

    :cond_119
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v2, v20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " declares multiple JSON fields named "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v15, Lcom/bykv/vk/openvk/preload/a/b/a/i$b;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_137
    move-object/from16 p3, v10

    move-object v2, v14

    move-object v0, v15

    iget-object v0, v0, Lcom/bykv/vk/openvk/preload/a/c/a;->c:Ljava/lang/reflect/Type;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    move-object/from16 v3, p3

    invoke-static {v0, v3, v1}, Lcom/bykv/vk/openvk/preload/a/b/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/bykv/vk/openvk/preload/a/c/a;->a(Ljava/lang/reflect/Type;)Lcom/bykv/vk/openvk/preload/a/c/a;

    move-result-object v15

    iget-object v10, v15, Lcom/bykv/vk/openvk/preload/a/c/a;->b:Ljava/lang/Class;

    move-object/from16 v11, p0

    goto/16 :goto_17

    :cond_151
    return-object v13
.end method

.method private a(Ljava/lang/reflect/Field;Z)Z
    .registers 11

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/b/a/i;->c:Lcom/bykv/vk/openvk/preload/a/b/d;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/preload/a/b/d;->a(Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_17

    invoke-virtual {v0, p2}, Lcom/bykv/vk/openvk/preload/a/b/d;->a(Z)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_17

    :cond_15
    const/4 v1, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v1, 0x1

    :goto_18
    if-nez v1, :cond_b2

    iget v1, v0, Lcom/bykv/vk/openvk/preload/a/b/d;->c:I

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    and-int/2addr v1, v4

    if-eqz v1, :cond_26

    :cond_23
    :goto_23
    const/4 p1, 0x1

    goto/16 :goto_af

    :cond_26
    iget-wide v4, v0, Lcom/bykv/vk/openvk/preload/a/b/d;->b:D

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    cmpl-double v1, v4, v6

    if-eqz v1, :cond_45

    const-class v1, Lcom/bykv/vk/openvk/preload/a/a/d;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/bykv/vk/openvk/preload/a/a/d;

    const-class v4, Lcom/bykv/vk/openvk/preload/a/a/e;

    invoke-virtual {p1, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/bykv/vk/openvk/preload/a/a/e;

    invoke-virtual {v0, v1, v4}, Lcom/bykv/vk/openvk/preload/a/b/d;->a(Lcom/bykv/vk/openvk/preload/a/a/d;Lcom/bykv/vk/openvk/preload/a/a/e;)Z

    move-result v1

    if-nez v1, :cond_45

    goto :goto_23

    :cond_45
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v1

    if-eqz v1, :cond_4c

    goto :goto_23

    :cond_4c
    iget-boolean v1, v0, Lcom/bykv/vk/openvk/preload/a/b/d;->e:Z

    if-eqz v1, :cond_6a

    const-class v1, Lcom/bykv/vk/openvk/preload/a/a/a;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/bykv/vk/openvk/preload/a/a/a;

    if-eqz v1, :cond_23

    if-eqz p2, :cond_63

    invoke-interface {v1}, Lcom/bykv/vk/openvk/preload/a/a/a;->a()Z

    move-result v1

    if-nez v1, :cond_6a

    goto :goto_69

    :cond_63
    invoke-interface {v1}, Lcom/bykv/vk/openvk/preload/a/a/a;->b()Z

    move-result v1

    if-nez v1, :cond_6a

    :goto_69
    goto :goto_23

    :cond_6a
    iget-boolean v1, v0, Lcom/bykv/vk/openvk/preload/a/b/d;->d:Z

    if-nez v1, :cond_79

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/bykv/vk/openvk/preload/a/b/d;->c(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_79

    goto :goto_23

    :cond_79
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/bykv/vk/openvk/preload/a/b/d;->b(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_84

    goto :goto_23

    :cond_84
    if-eqz p2, :cond_89

    iget-object p2, v0, Lcom/bykv/vk/openvk/preload/a/b/d;->f:Ljava/util/List;

    goto :goto_8b

    :cond_89
    iget-object p2, v0, Lcom/bykv/vk/openvk/preload/a/b/d;->g:Ljava/util/List;

    :goto_8b
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_ae

    new-instance v0, Lcom/bykv/vk/openvk/preload/a/c;

    invoke-direct {v0, p1}, Lcom/bykv/vk/openvk/preload/a/c;-><init>(Ljava/lang/reflect/Field;)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_ae

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bykv/vk/openvk/preload/a/b;

    invoke-interface {p2}, Lcom/bykv/vk/openvk/preload/a/b;->a()Z

    move-result p2

    if-eqz p2, :cond_9a

    goto/16 :goto_23

    :cond_ae
    const/4 p1, 0x0

    :goto_af
    if-nez p1, :cond_b2

    return v3

    :cond_b2
    return v2
.end method


# virtual methods
.method public final a(Lcom/bykv/vk/openvk/preload/a/f;Lcom/bykv/vk/openvk/preload/a/c/a;)Lcom/bykv/vk/openvk/preload/a/t;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bykv/vk/openvk/preload/a/f;",
            "Lcom/bykv/vk/openvk/preload/a/c/a<",
            "TT;>;)",
            "Lcom/bykv/vk/openvk/preload/a/t<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p2, Lcom/bykv/vk/openvk/preload/a/c/a;->b:Ljava/lang/Class;

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_c

    const/4 p1, 0x0

    return-object p1

    :cond_c
    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/a/b/a/i;->a:Lcom/bykv/vk/openvk/preload/a/b/c;

    invoke-virtual {v1, p2}, Lcom/bykv/vk/openvk/preload/a/b/c;->a(Lcom/bykv/vk/openvk/preload/a/c/a;)Lcom/bykv/vk/openvk/preload/a/b/i;

    move-result-object v1

    new-instance v2, Lcom/bykv/vk/openvk/preload/a/b/a/i$a;

    invoke-direct {p0, p1, p2, v0}, Lcom/bykv/vk/openvk/preload/a/b/a/i;->a(Lcom/bykv/vk/openvk/preload/a/f;Lcom/bykv/vk/openvk/preload/a/c/a;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {v2, v1, p1}, Lcom/bykv/vk/openvk/preload/a/b/a/i$a;-><init>(Lcom/bykv/vk/openvk/preload/a/b/i;Ljava/util/Map;)V

    return-object v2
.end method

###### Class com.bykv.vk.openvk.preload.a.b.a.i.AnonymousClass1 (com.bykv.vk.openvk.preload.a.b.a.i$1)
.class final Lcom/bykv/vk/openvk/preload/a/b/a/i$1;
.super Lcom/bykv/vk/openvk/preload/a/b/a/i$b;
.source "ReflectiveTypeAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/openvk/preload/a/b/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/reflect/Field;

.field final synthetic b:Z

.field final synthetic c:Lcom/bykv/vk/openvk/preload/a/t;

.field final synthetic d:Lcom/bykv/vk/openvk/preload/a/f;

.field final synthetic e:Lcom/bykv/vk/openvk/preload/a/c/a;

.field final synthetic f:Z

.field final synthetic g:Lcom/bykv/vk/openvk/preload/a/b/a/i;


# direct methods
.method constructor <init>(Lcom/bykv/vk/openvk/preload/a/b/a/i;Ljava/lang/String;ZZLjava/lang/reflect/Field;ZLcom/bykv/vk/openvk/preload/a/t;Lcom/bykv/vk/openvk/preload/a/f;Lcom/bykv/vk/openvk/preload/a/c/a;Z)V
    .registers 11

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/a/b/a/i$1;->g:Lcom/bykv/vk/openvk/preload/a/b/a/i;

    iput-object p5, p0, Lcom/bykv/vk/openvk/preload/a/b/a/i$1;->a:Ljava/lang/reflect/Field;

    iput-boolean p6, p0, Lcom/bykv/vk/openvk/preload/a/b/a/i$1;->b:Z

    iput-object p7, p0, Lcom/bykv/vk/openvk/preload/a/b/a/i$1;->c:Lcom/bykv/vk/openvk/preload/a/t;

    iput-object p8, p0, Lcom/bykv/vk/openvk/preload/a/b/a/i$1;->d:Lcom/bykv/vk/openvk/preload/a/f;

    iput-object p9, p0, Lcom/bykv/vk/openvk/preload/a/b/a/i$1;->e:Lcom/bykv/vk/openvk/preload/a/c/a;

    iput-boolean p10, p0, Lcom/bykv/vk/openvk/preload/a/b/a/i$1;->f:Z

    invoke-direct {p0, p2, p3, p4}, Lcom/bykv/vk/openvk/preload/a/b/a/i$b;-><init>(Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method final a(Lcom/bykv/vk/openvk/preload/a/d/a;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/b/a/i$1;->c:Lcom/bykv/vk/openvk/preload/a/t;

    invoke-virtual {v0, p1}, Lcom/bykv/vk/openvk/preload/a/t;->a(Lcom/bykv/vk/openvk/preload/a/d/a;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_c

    iget-boolean v0, p0, Lcom/bykv/vk/openvk/preload/a/b/a/i$1;->f:Z

    if-nez v0, :cond_11

    :cond_c
    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/b/a/i$1;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    return-void
.end method

.method final a(Lcom/bykv/vk/openvk/preload/a/d/c;Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/b/a/i$1;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iget-boolean v0, p0, Lcom/bykv/vk/openvk/preload/a/b/a/i$1;->b:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/b/a/i$1;->c:Lcom/bykv/vk/openvk/preload/a/t;

    goto :goto_1a

    :cond_d
    new-instance v0, Lcom/bykv/vk/openvk/preload/a/b/a/m;

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/a/b/a/i$1;->d:Lcom/bykv/vk/openvk/preload/a/f;

    iget-object v2, p0, Lcom/bykv/vk/openvk/preload/a/b/a/i$1;->c:Lcom/bykv/vk/openvk/preload/a/t;

    iget-object v3, p0, Lcom/bykv/vk/openvk/preload/a/b/a/i$1;->e:Lcom/bykv/vk/openvk/preload/a/c/a;

    iget-object v3, v3, Lcom/bykv/vk/openvk/preload/a/c/a;->c:Ljava/lang/reflect/Type;

    invoke-direct {v0, v1, v2, v3}, Lcom/bykv/vk/openvk/preload/a/b/a/m;-><init>(Lcom/bykv/vk/openvk/preload/a/f;Lcom/bykv/vk/openvk/preload/a/t;Ljava/lang/reflect/Type;)V

    :goto_1a
    invoke-virtual {v0, p1, p2}, Lcom/bykv/vk/openvk/preload/a/t;->a(Lcom/bykv/vk/openvk/preload/a/d/c;Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bykv/vk/openvk/preload/a/b/a/i$b;->i:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/b/a/i$1;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_10

    const/4 p1, 0x1

    return p1

    :cond_10
    return v1
.end method

###### Class com.bykv.vk.openvk.preload.a.b.a.i.a (com.bykv.vk.openvk.preload.a.b.a.i$a)
.class public final Lcom/bykv/vk/openvk/preload/a/b/a/i$a;
.super Lcom/bykv/vk/openvk/preload/a/t;
.source "ReflectiveTypeAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/openvk/preload/a/b/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bykv/vk/openvk/preload/a/t<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bykv/vk/openvk/preload/a/b/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bykv/vk/openvk/preload/a/b/i<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bykv/vk/openvk/preload/a/b/a/i$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bykv/vk/openvk/preload/a/b/i;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bykv/vk/openvk/preload/a/b/i<",
            "TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bykv/vk/openvk/preload/a/b/a/i$b;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/a/t;-><init>()V

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/a/b/a/i$a;->a:Lcom/bykv/vk/openvk/preload/a/b/i;

    iput-object p2, p0, Lcom/bykv/vk/openvk/preload/a/b/a/i$a;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Lcom/bykv/vk/openvk/preload/a/d/a;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bykv/vk/openvk/preload/a/d/a;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/a/d/a;->f()Lcom/bykv/vk/openvk/preload/a/d/b;

    move-result-object v0

    sget-object v1, Lcom/bykv/vk/openvk/preload/a/d/b;->i:Lcom/bykv/vk/openvk/preload/a/d/b;

    if-ne v0, v1, :cond_d

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/a/d/a;->k()V

    const/4 p1, 0x0

    return-object p1

    :cond_d
    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/b/a/i$a;->a:Lcom/bykv/vk/openvk/preload/a/b/i;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/preload/a/b/i;->a()Ljava/lang/Object;

    move-result-object v0

    :try_start_13
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/a/d/a;->c()V

    :goto_16
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/a/d/a;->e()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/a/d/a;->h()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bykv/vk/openvk/preload/a/b/a/i$a;->b:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bykv/vk/openvk/preload/a/b/a/i$b;

    if-eqz v1, :cond_33

    iget-boolean v2, v1, Lcom/bykv/vk/openvk/preload/a/b/a/i$b;->j:Z

    if-nez v2, :cond_2f

    goto :goto_33

    :cond_2f
    invoke-virtual {v1, p1, v0}, Lcom/bykv/vk/openvk/preload/a/b/a/i$b;->a(Lcom/bykv/vk/openvk/preload/a/d/a;Ljava/lang/Object;)V

    goto :goto_16

    :cond_33
    :goto_33
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/a/d/a;->o()V
    :try_end_36
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_36} :catch_42
    .catch Ljava/lang/IllegalAccessException; {:try_start_13 .. :try_end_36} :catch_3b

    goto :goto_16

    :cond_37
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/a/d/a;->d()V

    return-object v0

    :catch_3b
    move-exception p1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :catch_42
    move-exception p1

    new-instance v0, Lcom/bykv/vk/openvk/preload/a/r;

    invoke-direct {v0, p1}, Lcom/bykv/vk/openvk/preload/a/r;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final a(Lcom/bykv/vk/openvk/preload/a/d/c;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bykv/vk/openvk/preload/a/d/c;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_6

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/a/d/c;->e()Lcom/bykv/vk/openvk/preload/a/d/c;

    return-void

    :cond_6
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/a/d/c;->c()Lcom/bykv/vk/openvk/preload/a/d/c;

    :try_start_9
    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/b/a/i$a;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bykv/vk/openvk/preload/a/b/a/i$b;

    invoke-virtual {v1, p2}, Lcom/bykv/vk/openvk/preload/a/b/a/i$b;->a(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, v1, Lcom/bykv/vk/openvk/preload/a/b/a/i$b;->h:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/bykv/vk/openvk/preload/a/d/c;->a(Ljava/lang/String;)Lcom/bykv/vk/openvk/preload/a/d/c;

    invoke-virtual {v1, p1, p2}, Lcom/bykv/vk/openvk/preload/a/b/a/i$b;->a(Lcom/bykv/vk/openvk/preload/a/d/c;Ljava/lang/Object;)V
    :try_end_2d
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_2d} :catch_32

    goto :goto_13

    :cond_2e
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/a/d/c;->d()Lcom/bykv/vk/openvk/preload/a/d/c;

    return-void

    :catch_32
    move-exception p1

    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

###### Class com.bykv.vk.openvk.preload.a.b.a.i.b (com.bykv.vk.openvk.preload.a.b.a.i$b)
.class abstract Lcom/bykv/vk/openvk/preload/a/b/a/i$b;
.super Ljava/lang/Object;
.source "ReflectiveTypeAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/openvk/preload/a/b/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "b"
.end annotation


# instance fields
.field final h:Ljava/lang/String;

.field final i:Z

.field final j:Z


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/a/b/a/i$b;->h:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/bykv/vk/openvk/preload/a/b/a/i$b;->i:Z

    iput-boolean p3, p0, Lcom/bykv/vk/openvk/preload/a/b/a/i$b;->j:Z

    return-void
.end method


# virtual methods
.method abstract a(Lcom/bykv/vk/openvk/preload/a/d/a;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method

.method abstract a(Lcom/bykv/vk/openvk/preload/a/d/c;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method

.method abstract a(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method
