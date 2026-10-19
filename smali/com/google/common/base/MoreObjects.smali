###### Class com.google.common.base.MoreObjects (com.google.common.base.MoreObjects)
.class public final Lcom/google/common/base/MoreObjects;
.super Ljava/lang/Object;
.source "MoreObjects.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/MoreObjects$b;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_3

    return-object p0

    :cond_3
    const-string p0, "Both parameters are null"

    invoke-static {p1, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p1
.end method

.method public static toStringHelper(Ljava/lang/Class;)Lcom/google/common/base/MoreObjects$b;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/common/base/MoreObjects$b;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/base/MoreObjects$b;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/base/MoreObjects$b;-><init>(Ljava/lang/String;Lcom/google/common/base/MoreObjects$a;)V

    return-object v0
.end method

.method public static toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$b;
    .registers 3

    new-instance v0, Lcom/google/common/base/MoreObjects$b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/base/MoreObjects$b;-><init>(Ljava/lang/String;Lcom/google/common/base/MoreObjects$a;)V

    return-object v0
.end method

.method public static toStringHelper(Ljava/lang/String;)Lcom/google/common/base/MoreObjects$b;
    .registers 3

    new-instance v0, Lcom/google/common/base/MoreObjects$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/base/MoreObjects$b;-><init>(Ljava/lang/String;Lcom/google/common/base/MoreObjects$a;)V

    return-object v0
.end method

###### Class com.google.common.base.MoreObjects.a (com.google.common.base.MoreObjects$a)
.class synthetic Lcom/google/common/base/MoreObjects$a;
.super Ljava/lang/Object;
.source "MoreObjects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/MoreObjects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.google.common.base.MoreObjects.b (com.google.common.base.MoreObjects$b)
.class public final Lcom/google/common/base/MoreObjects$b;
.super Ljava/lang/Object;
.source "MoreObjects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/MoreObjects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/MoreObjects$b$a;,
        Lcom/google/common/base/MoreObjects$b$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/common/base/MoreObjects$b$b;

.field private c:Lcom/google/common/base/MoreObjects$b$b;

.field private d:Z

.field private e:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/common/base/MoreObjects$b$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/base/MoreObjects$b$b;-><init>(Lcom/google/common/base/MoreObjects$a;)V

    iput-object v0, p0, Lcom/google/common/base/MoreObjects$b;->b:Lcom/google/common/base/MoreObjects$b$b;

    iput-object v0, p0, Lcom/google/common/base/MoreObjects$b;->c:Lcom/google/common/base/MoreObjects$b$b;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/base/MoreObjects$b;->d:Z

    iput-boolean v0, p0, Lcom/google/common/base/MoreObjects$b;->e:Z

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/common/base/MoreObjects$b;->a:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/common/base/MoreObjects$a;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/common/base/MoreObjects$b;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private e()Lcom/google/common/base/MoreObjects$b$b;
    .registers 3

    new-instance v0, Lcom/google/common/base/MoreObjects$b$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/base/MoreObjects$b$b;-><init>(Lcom/google/common/base/MoreObjects$a;)V

    iget-object v1, p0, Lcom/google/common/base/MoreObjects$b;->c:Lcom/google/common/base/MoreObjects$b$b;

    iput-object v0, v1, Lcom/google/common/base/MoreObjects$b$b;->c:Lcom/google/common/base/MoreObjects$b$b;

    iput-object v0, p0, Lcom/google/common/base/MoreObjects$b;->c:Lcom/google/common/base/MoreObjects$b$b;

    return-object v0
.end method

.method private f(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$b;
    .registers 3

    invoke-direct {p0}, Lcom/google/common/base/MoreObjects$b;->e()Lcom/google/common/base/MoreObjects$b$b;

    move-result-object v0

    iput-object p1, v0, Lcom/google/common/base/MoreObjects$b$b;->b:Ljava/lang/Object;

    return-object p0
.end method

.method private g(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$b;
    .registers 4

    invoke-direct {p0}, Lcom/google/common/base/MoreObjects$b;->e()Lcom/google/common/base/MoreObjects$b$b;

    move-result-object v0

    iput-object p2, v0, Lcom/google/common/base/MoreObjects$b$b;->b:Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, v0, Lcom/google/common/base/MoreObjects$b$b;->a:Ljava/lang/String;

    return-object p0
.end method

.method private h()Lcom/google/common/base/MoreObjects$b$a;
    .registers 3

    new-instance v0, Lcom/google/common/base/MoreObjects$b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/base/MoreObjects$b$a;-><init>(Lcom/google/common/base/MoreObjects$a;)V

    iget-object v1, p0, Lcom/google/common/base/MoreObjects$b;->c:Lcom/google/common/base/MoreObjects$b$b;

    iput-object v0, v1, Lcom/google/common/base/MoreObjects$b$b;->c:Lcom/google/common/base/MoreObjects$b$b;

    iput-object v0, p0, Lcom/google/common/base/MoreObjects$b;->c:Lcom/google/common/base/MoreObjects$b$b;

    return-object v0
.end method

.method private i(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$b;
    .registers 4

    invoke-direct {p0}, Lcom/google/common/base/MoreObjects$b;->h()Lcom/google/common/base/MoreObjects$b$a;

    move-result-object v0

    iput-object p2, v0, Lcom/google/common/base/MoreObjects$b$b;->b:Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, v0, Lcom/google/common/base/MoreObjects$b$b;->a:Ljava/lang/String;

    return-object p0
.end method

.method private static k(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p0, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    check-cast p0, Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_f

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return v1

    :cond_11
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_1c

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    return p0

    :cond_1c
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_27

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    return p0

    :cond_27
    instance-of v0, p0, Lcom/google/common/base/Optional;

    if-eqz v0, :cond_33

    check-cast p0, Lcom/google/common/base/Optional;

    invoke-virtual {p0}, Lcom/google/common/base/Optional;->d()Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    :cond_33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p0

    if-nez p0, :cond_44

    goto :goto_45

    :cond_44
    const/4 v1, 0x0

    :goto_45
    return v1

    :cond_46
    return v2
.end method


# virtual methods
.method public a(Ljava/lang/String;D)Lcom/google/common/base/MoreObjects$b;
    .registers 4

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/base/MoreObjects$b;->i(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$b;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$b;
    .registers 3

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/base/MoreObjects$b;->i(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$b;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$b;
    .registers 4

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/base/MoreObjects$b;->i(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$b;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$b;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/common/base/MoreObjects$b;->g(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$b;

    move-result-object p1

    return-object p1
.end method

.method public j(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$b;
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/common/base/MoreObjects$b;->f(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$b;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    iget-boolean v0, p0, Lcom/google/common/base/MoreObjects$b;->d:Z

    iget-boolean v1, p0, Lcom/google/common/base/MoreObjects$b;->e:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v3, p0, Lcom/google/common/base/MoreObjects$b;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x7b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/common/base/MoreObjects$b;->b:Lcom/google/common/base/MoreObjects$b$b;

    iget-object v3, v3, Lcom/google/common/base/MoreObjects$b$b;->c:Lcom/google/common/base/MoreObjects$b$b;

    const-string v4, ""

    :goto_1b
    if-eqz v3, :cond_66

    iget-object v5, v3, Lcom/google/common/base/MoreObjects$b$b;->b:Ljava/lang/Object;

    instance-of v6, v3, Lcom/google/common/base/MoreObjects$b$a;

    if-nez v6, :cond_30

    if-nez v5, :cond_28

    if-nez v0, :cond_63

    goto :goto_30

    :cond_28
    if-eqz v1, :cond_30

    invoke-static {v5}, Lcom/google/common/base/MoreObjects$b;->k(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_63

    :cond_30
    :goto_30
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Lcom/google/common/base/MoreObjects$b$b;->a:Ljava/lang/String;

    if-eqz v4, :cond_3f

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3d

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3f
    if-eqz v5, :cond_5e

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_5e

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    invoke-static {v6}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-virtual {v2, v5, v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_61

    :cond_5e
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_61
    const-string v4, ", "

    :cond_63
    iget-object v3, v3, Lcom/google/common/base/MoreObjects$b$b;->c:Lcom/google/common/base/MoreObjects$b$b;

    goto :goto_1b

    :cond_66
    const/16 v0, 0x7d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.common.base.MoreObjects.b.a (com.google.common.base.MoreObjects$b$a)
.class final Lcom/google/common/base/MoreObjects$b$a;
.super Lcom/google/common/base/MoreObjects$b$b;
.source "MoreObjects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/MoreObjects$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/base/MoreObjects$b$b;-><init>(Lcom/google/common/base/MoreObjects$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/base/MoreObjects$a;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/common/base/MoreObjects$b$a;-><init>()V

    return-void
.end method

###### Class com.google.common.base.MoreObjects.b.C0241b (com.google.common.base.MoreObjects$b$b)
.class Lcom/google/common/base/MoreObjects$b$b;
.super Ljava/lang/Object;
.source "MoreObjects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/MoreObjects$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/Object;

.field c:Lcom/google/common/base/MoreObjects$b$b;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/base/MoreObjects$a;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/common/base/MoreObjects$b$b;-><init>()V

    return-void
.end method
