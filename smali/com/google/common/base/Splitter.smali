###### Class com.google.common.base.Splitter (com.google.common.base.Splitter)
.class public final Lcom/google/common/base/Splitter;
.super Ljava/lang/Object;
.source "Splitter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/Splitter$f;,
        Lcom/google/common/base/Splitter$g;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/common/base/CharMatcher;

.field private final b:Z

.field private final c:Lcom/google/common/base/Splitter$g;

.field private final d:I


# direct methods
.method private constructor <init>(Lcom/google/common/base/Splitter$g;)V
    .registers 5

    invoke-static {}, Lcom/google/common/base/CharMatcher;->none()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7fffffff

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/google/common/base/Splitter;-><init>(Lcom/google/common/base/Splitter$g;ZLcom/google/common/base/CharMatcher;I)V

    return-void
.end method

.method private constructor <init>(Lcom/google/common/base/Splitter$g;ZLcom/google/common/base/CharMatcher;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/base/Splitter;->c:Lcom/google/common/base/Splitter$g;

    iput-boolean p2, p0, Lcom/google/common/base/Splitter;->b:Z

    iput-object p3, p0, Lcom/google/common/base/Splitter;->a:Lcom/google/common/base/CharMatcher;

    iput p4, p0, Lcom/google/common/base/Splitter;->d:I

    return-void
.end method

.method static synthetic a(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/common/base/Splitter;->j(Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/google/common/base/Splitter;)Lcom/google/common/base/CharMatcher;
    .registers 1

    iget-object p0, p0, Lcom/google/common/base/Splitter;->a:Lcom/google/common/base/CharMatcher;

    return-object p0
.end method

.method static synthetic c(Lcom/google/common/base/Splitter;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/common/base/Splitter;->b:Z

    return p0
.end method

.method static synthetic d(Lcom/google/common/base/Splitter;)I
    .registers 1

    iget p0, p0, Lcom/google/common/base/Splitter;->d:I

    return p0
.end method

.method public static fixedLength(I)Lcom/google/common/base/Splitter;
    .registers 3

    if-lez p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    const-string v1, "The length may not be less than 1"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/common/base/Splitter;

    new-instance v1, Lcom/google/common/base/Splitter$d;

    invoke-direct {v1, p0}, Lcom/google/common/base/Splitter$d;-><init>(I)V

    invoke-direct {v0, v1}, Lcom/google/common/base/Splitter;-><init>(Lcom/google/common/base/Splitter$g;)V

    return-object v0
.end method

.method private static g(Lcom/google/common/base/CommonPattern;)Lcom/google/common/base/Splitter;
    .registers 3

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/google/common/base/CommonPattern;->d(Ljava/lang/CharSequence;)Lcom/google/common/base/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/c;->d()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "The pattern may not match the empty string: %s"

    invoke-static {v0, v1, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lcom/google/common/base/Splitter;

    new-instance v1, Lcom/google/common/base/Splitter$c;

    invoke-direct {v1, p0}, Lcom/google/common/base/Splitter$c;-><init>(Lcom/google/common/base/CommonPattern;)V

    invoke-direct {v0, v1}, Lcom/google/common/base/Splitter;-><init>(Lcom/google/common/base/Splitter$g;)V

    return-object v0
.end method

.method private j(Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/base/Splitter;->c:Lcom/google/common/base/Splitter$g;

    invoke-interface {v0, p0, p1}, Lcom/google/common/base/Splitter$g;->a(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public static on(C)Lcom/google/common/base/Splitter;
    .registers 1

    invoke-static {p0}, Lcom/google/common/base/CharMatcher;->is(C)Lcom/google/common/base/CharMatcher;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/base/Splitter;->on(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/Splitter;

    move-result-object p0

    return-object p0
.end method

.method public static on(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/Splitter;
    .registers 3

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/base/Splitter;

    new-instance v1, Lcom/google/common/base/Splitter$a;

    invoke-direct {v1, p0}, Lcom/google/common/base/Splitter$a;-><init>(Lcom/google/common/base/CharMatcher;)V

    invoke-direct {v0, v1}, Lcom/google/common/base/Splitter;-><init>(Lcom/google/common/base/Splitter$g;)V

    return-object v0
.end method

.method public static on(Ljava/lang/String;)Lcom/google/common/base/Splitter;
    .registers 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    const-string v3, "The separator may not be the empty string."

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v1, :cond_1f

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lcom/google/common/base/Splitter;->on(C)Lcom/google/common/base/Splitter;

    move-result-object p0

    return-object p0

    :cond_1f
    new-instance v0, Lcom/google/common/base/Splitter;

    new-instance v1, Lcom/google/common/base/Splitter$b;

    invoke-direct {v1, p0}, Lcom/google/common/base/Splitter$b;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/common/base/Splitter;-><init>(Lcom/google/common/base/Splitter$g;)V

    return-object v0
.end method

.method public static on(Ljava/util/regex/Pattern;)Lcom/google/common/base/Splitter;
    .registers 2

    new-instance v0, Lcom/google/common/base/g;

    invoke-direct {v0, p0}, Lcom/google/common/base/g;-><init>(Ljava/util/regex/Pattern;)V

    invoke-static {v0}, Lcom/google/common/base/Splitter;->g(Lcom/google/common/base/CommonPattern;)Lcom/google/common/base/Splitter;

    move-result-object p0

    return-object p0
.end method

.method public static onPattern(Ljava/lang/String;)Lcom/google/common/base/Splitter;
    .registers 1

    invoke-static {p0}, Lcom/google/common/base/j;->a(Ljava/lang/String;)Lcom/google/common/base/CommonPattern;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/base/Splitter;->g(Lcom/google/common/base/CommonPattern;)Lcom/google/common/base/Splitter;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public e(I)Lcom/google/common/base/Splitter;
    .registers 6

    if-lez p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    const-string v1, "must be greater than zero: %s"

    invoke-static {v0, v1, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    new-instance v0, Lcom/google/common/base/Splitter;

    iget-object v1, p0, Lcom/google/common/base/Splitter;->c:Lcom/google/common/base/Splitter$g;

    iget-boolean v2, p0, Lcom/google/common/base/Splitter;->b:Z

    iget-object v3, p0, Lcom/google/common/base/Splitter;->a:Lcom/google/common/base/CharMatcher;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/google/common/base/Splitter;-><init>(Lcom/google/common/base/Splitter$g;ZLcom/google/common/base/CharMatcher;I)V

    return-object v0
.end method

.method public f()Lcom/google/common/base/Splitter;
    .registers 6

    new-instance v0, Lcom/google/common/base/Splitter;

    iget-object v1, p0, Lcom/google/common/base/Splitter;->c:Lcom/google/common/base/Splitter$g;

    iget-object v2, p0, Lcom/google/common/base/Splitter;->a:Lcom/google/common/base/CharMatcher;

    iget v3, p0, Lcom/google/common/base/Splitter;->d:I

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/google/common/base/Splitter;-><init>(Lcom/google/common/base/Splitter$g;ZLcom/google/common/base/CharMatcher;I)V

    return-object v0
.end method

.method public h(Ljava/lang/CharSequence;)Ljava/lang/Iterable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/base/Splitter$e;

    invoke-direct {v0, p0, p1}, Lcom/google/common/base/Splitter$e;-><init>(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public i(Ljava/lang/CharSequence;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/google/common/base/Splitter;->j(Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_1c
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public k()Lcom/google/common/base/Splitter;
    .registers 2

    invoke-static {}, Lcom/google/common/base/CharMatcher;->whitespace()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/Splitter;->l(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/Splitter;

    move-result-object v0

    return-object v0
.end method

.method public l(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/Splitter;
    .registers 6

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/base/Splitter;

    iget-object v1, p0, Lcom/google/common/base/Splitter;->c:Lcom/google/common/base/Splitter$g;

    iget-boolean v2, p0, Lcom/google/common/base/Splitter;->b:Z

    iget v3, p0, Lcom/google/common/base/Splitter;->d:I

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/google/common/base/Splitter;-><init>(Lcom/google/common/base/Splitter$g;ZLcom/google/common/base/CharMatcher;I)V

    return-object v0
.end method

###### Class com.google.common.base.Splitter.a (com.google.common.base.Splitter$a)
.class Lcom/google/common/base/Splitter$a;
.super Ljava/lang/Object;
.source "Splitter.java"

# interfaces
.implements Lcom/google/common/base/Splitter$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/Splitter;->on(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/Splitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/base/CharMatcher;


# direct methods
.method constructor <init>(Lcom/google/common/base/CharMatcher;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/base/Splitter$a;->a:Lcom/google/common/base/CharMatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/google/common/base/Splitter$a;->b(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)Lcom/google/common/base/Splitter$f;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)Lcom/google/common/base/Splitter$f;
    .registers 4

    new-instance v0, Lcom/google/common/base/Splitter$a$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/base/Splitter$a$a;-><init>(Lcom/google/common/base/Splitter$a;Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)V

    return-object v0
.end method

###### Class com.google.common.base.Splitter.a.C0243a (com.google.common.base.Splitter$a$a)
.class Lcom/google/common/base/Splitter$a$a;
.super Lcom/google/common/base/Splitter$f;
.source "Splitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/Splitter$a;->b(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)Lcom/google/common/base/Splitter$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic h:Lcom/google/common/base/Splitter$a;


# direct methods
.method constructor <init>(Lcom/google/common/base/Splitter$a;Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)V
    .registers 4

    iput-object p1, p0, Lcom/google/common/base/Splitter$a$a;->h:Lcom/google/common/base/Splitter$a;

    invoke-direct {p0, p2, p3}, Lcom/google/common/base/Splitter$f;-><init>(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method f(I)I
    .registers 2

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method g(I)I
    .registers 4

    iget-object v0, p0, Lcom/google/common/base/Splitter$a$a;->h:Lcom/google/common/base/Splitter$a;

    iget-object v0, v0, Lcom/google/common/base/Splitter$a;->a:Lcom/google/common/base/CharMatcher;

    iget-object v1, p0, Lcom/google/common/base/Splitter$f;->c:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, p1}, Lcom/google/common/base/CharMatcher;->f(Ljava/lang/CharSequence;I)I

    move-result p1

    return p1
.end method

###### Class com.google.common.base.Splitter.b (com.google.common.base.Splitter$b)
.class Lcom/google/common/base/Splitter$b;
.super Ljava/lang/Object;
.source "Splitter.java"

# interfaces
.implements Lcom/google/common/base/Splitter$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/Splitter;->on(Ljava/lang/String;)Lcom/google/common/base/Splitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/base/Splitter$b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/google/common/base/Splitter$b;->b(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)Lcom/google/common/base/Splitter$f;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)Lcom/google/common/base/Splitter$f;
    .registers 4

    new-instance v0, Lcom/google/common/base/Splitter$b$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/base/Splitter$b$a;-><init>(Lcom/google/common/base/Splitter$b;Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)V

    return-object v0
.end method

###### Class com.google.common.base.Splitter.b.a (com.google.common.base.Splitter$b$a)
.class Lcom/google/common/base/Splitter$b$a;
.super Lcom/google/common/base/Splitter$f;
.source "Splitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/Splitter$b;->b(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)Lcom/google/common/base/Splitter$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic h:Lcom/google/common/base/Splitter$b;


# direct methods
.method constructor <init>(Lcom/google/common/base/Splitter$b;Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)V
    .registers 4

    iput-object p1, p0, Lcom/google/common/base/Splitter$b$a;->h:Lcom/google/common/base/Splitter$b;

    invoke-direct {p0, p2, p3}, Lcom/google/common/base/Splitter$f;-><init>(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public f(I)I
    .registers 3

    iget-object v0, p0, Lcom/google/common/base/Splitter$b$a;->h:Lcom/google/common/base/Splitter$b;

    iget-object v0, v0, Lcom/google/common/base/Splitter$b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p1, v0

    return p1
.end method

.method public g(I)I
    .registers 7

    iget-object v0, p0, Lcom/google/common/base/Splitter$b$a;->h:Lcom/google/common/base/Splitter$b;

    iget-object v0, v0, Lcom/google/common/base/Splitter$b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/google/common/base/Splitter$f;->c:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, v0

    :goto_f
    if-gt p1, v1, :cond_2d

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v0, :cond_2c

    iget-object v3, p0, Lcom/google/common/base/Splitter$f;->c:Ljava/lang/CharSequence;

    add-int v4, v2, p1

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    iget-object v4, p0, Lcom/google/common/base/Splitter$b$a;->h:Lcom/google/common/base/Splitter$b;

    iget-object v4, v4, Lcom/google/common/base/Splitter$b;->a:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_29

    add-int/lit8 p1, p1, 0x1

    goto :goto_f

    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_2c
    return p1

    :cond_2d
    const/4 p1, -0x1

    return p1
.end method

###### Class com.google.common.base.Splitter.c (com.google.common.base.Splitter$c)
.class Lcom/google/common/base/Splitter$c;
.super Ljava/lang/Object;
.source "Splitter.java"

# interfaces
.implements Lcom/google/common/base/Splitter$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/Splitter;->g(Lcom/google/common/base/CommonPattern;)Lcom/google/common/base/Splitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/base/CommonPattern;


# direct methods
.method constructor <init>(Lcom/google/common/base/CommonPattern;)V
    .registers 2

    iput-object p1, p0, Lcom/google/common/base/Splitter$c;->a:Lcom/google/common/base/CommonPattern;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/google/common/base/Splitter$c;->b(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)Lcom/google/common/base/Splitter$f;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)Lcom/google/common/base/Splitter$f;
    .registers 5

    iget-object v0, p0, Lcom/google/common/base/Splitter$c;->a:Lcom/google/common/base/CommonPattern;

    invoke-virtual {v0, p2}, Lcom/google/common/base/CommonPattern;->d(Ljava/lang/CharSequence;)Lcom/google/common/base/c;

    move-result-object v0

    new-instance v1, Lcom/google/common/base/Splitter$c$a;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/google/common/base/Splitter$c$a;-><init>(Lcom/google/common/base/Splitter$c;Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;Lcom/google/common/base/c;)V

    return-object v1
.end method

###### Class com.google.common.base.Splitter.c.a (com.google.common.base.Splitter$c$a)
.class Lcom/google/common/base/Splitter$c$a;
.super Lcom/google/common/base/Splitter$f;
.source "Splitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/Splitter$c;->b(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)Lcom/google/common/base/Splitter$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic h:Lcom/google/common/base/c;


# direct methods
.method constructor <init>(Lcom/google/common/base/Splitter$c;Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;Lcom/google/common/base/c;)V
    .registers 5

    iput-object p4, p0, Lcom/google/common/base/Splitter$c$a;->h:Lcom/google/common/base/c;

    invoke-direct {p0, p2, p3}, Lcom/google/common/base/Splitter$f;-><init>(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public f(I)I
    .registers 2

    iget-object p1, p0, Lcom/google/common/base/Splitter$c$a;->h:Lcom/google/common/base/c;

    invoke-virtual {p1}, Lcom/google/common/base/c;->a()I

    move-result p1

    return p1
.end method

.method public g(I)I
    .registers 3

    iget-object v0, p0, Lcom/google/common/base/Splitter$c$a;->h:Lcom/google/common/base/c;

    invoke-virtual {v0, p1}, Lcom/google/common/base/c;->c(I)Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/google/common/base/Splitter$c$a;->h:Lcom/google/common/base/c;

    invoke-virtual {p1}, Lcom/google/common/base/c;->e()I

    move-result p1

    goto :goto_10

    :cond_f
    const/4 p1, -0x1

    :goto_10
    return p1
.end method

###### Class com.google.common.base.Splitter.d (com.google.common.base.Splitter$d)
.class Lcom/google/common/base/Splitter$d;
.super Ljava/lang/Object;
.source "Splitter.java"

# interfaces
.implements Lcom/google/common/base/Splitter$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/Splitter;->fixedLength(I)Lcom/google/common/base/Splitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/google/common/base/Splitter$d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/google/common/base/Splitter$d;->b(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)Lcom/google/common/base/Splitter$f;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)Lcom/google/common/base/Splitter$f;
    .registers 4

    new-instance v0, Lcom/google/common/base/Splitter$d$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/base/Splitter$d$a;-><init>(Lcom/google/common/base/Splitter$d;Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)V

    return-object v0
.end method

###### Class com.google.common.base.Splitter.d.a (com.google.common.base.Splitter$d$a)
.class Lcom/google/common/base/Splitter$d$a;
.super Lcom/google/common/base/Splitter$f;
.source "Splitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/Splitter$d;->b(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)Lcom/google/common/base/Splitter$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic h:Lcom/google/common/base/Splitter$d;


# direct methods
.method constructor <init>(Lcom/google/common/base/Splitter$d;Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)V
    .registers 4

    iput-object p1, p0, Lcom/google/common/base/Splitter$d$a;->h:Lcom/google/common/base/Splitter$d;

    invoke-direct {p0, p2, p3}, Lcom/google/common/base/Splitter$f;-><init>(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public f(I)I
    .registers 2

    return p1
.end method

.method public g(I)I
    .registers 3

    iget-object v0, p0, Lcom/google/common/base/Splitter$d$a;->h:Lcom/google/common/base/Splitter$d;

    iget v0, v0, Lcom/google/common/base/Splitter$d;->a:I

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/google/common/base/Splitter$f;->c:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_e

    goto :goto_f

    :cond_e
    const/4 p1, -0x1

    :goto_f
    return p1
.end method

###### Class com.google.common.base.Splitter.e (com.google.common.base.Splitter$e)
.class Lcom/google/common/base/Splitter$e;
.super Ljava/lang/Object;
.source "Splitter.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/Splitter;->h(Ljava/lang/CharSequence;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/CharSequence;

.field final synthetic b:Lcom/google/common/base/Splitter;


# direct methods
.method constructor <init>(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/base/Splitter$e;->b:Lcom/google/common/base/Splitter;

    iput-object p2, p0, Lcom/google/common/base/Splitter$e;->a:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/base/Splitter$e;->b:Lcom/google/common/base/Splitter;

    iget-object v1, p0, Lcom/google/common/base/Splitter$e;->a:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/google/common/base/Splitter;->a(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const-string v0, ", "

    invoke-static {v0}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, p0}, Lcom/google/common/base/Joiner;->c(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.common.base.Splitter.f (com.google.common.base.Splitter$f)
.class abstract Lcom/google/common/base/Splitter$f;
.super Lcom/google/common/base/AbstractIterator;
.source "Splitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Splitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/base/AbstractIterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final c:Ljava/lang/CharSequence;

.field final d:Lcom/google/common/base/CharMatcher;

.field final e:Z

.field f:I

.field g:I


# direct methods
.method protected constructor <init>(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)V
    .registers 4

    invoke-direct {p0}, Lcom/google/common/base/AbstractIterator;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/base/Splitter$f;->f:I

    invoke-static {p1}, Lcom/google/common/base/Splitter;->b(Lcom/google/common/base/Splitter;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/base/Splitter$f;->d:Lcom/google/common/base/CharMatcher;

    invoke-static {p1}, Lcom/google/common/base/Splitter;->c(Lcom/google/common/base/Splitter;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/common/base/Splitter$f;->e:Z

    invoke-static {p1}, Lcom/google/common/base/Splitter;->d(Lcom/google/common/base/Splitter;)I

    move-result p1

    iput p1, p0, Lcom/google/common/base/Splitter$f;->g:I

    iput-object p2, p0, Lcom/google/common/base/Splitter$f;->c:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method protected bridge synthetic b()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/base/Splitter$f;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected e()Ljava/lang/String;
    .registers 7

    iget v0, p0, Lcom/google/common/base/Splitter$f;->f:I

    :cond_2
    :goto_2
    iget v1, p0, Lcom/google/common/base/Splitter$f;->f:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_90

    invoke-virtual {p0, v1}, Lcom/google/common/base/Splitter$f;->g(I)I

    move-result v1

    if-ne v1, v2, :cond_16

    iget-object v1, p0, Lcom/google/common/base/Splitter$f;->c:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iput v2, p0, Lcom/google/common/base/Splitter$f;->f:I

    goto :goto_1c

    :cond_16
    invoke-virtual {p0, v1}, Lcom/google/common/base/Splitter$f;->f(I)I

    move-result v3

    iput v3, p0, Lcom/google/common/base/Splitter$f;->f:I

    :goto_1c
    iget v3, p0, Lcom/google/common/base/Splitter$f;->f:I

    if-ne v3, v0, :cond_2f

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/common/base/Splitter$f;->f:I

    iget-object v1, p0, Lcom/google/common/base/Splitter$f;->c:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v3, v1, :cond_2

    iput v2, p0, Lcom/google/common/base/Splitter$f;->f:I

    goto :goto_2

    :cond_2f
    :goto_2f
    if-ge v0, v1, :cond_42

    iget-object v3, p0, Lcom/google/common/base/Splitter$f;->d:Lcom/google/common/base/CharMatcher;

    iget-object v4, p0, Lcom/google/common/base/Splitter$f;->c:Ljava/lang/CharSequence;

    invoke-interface {v4, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/common/base/CharMatcher;->h(C)Z

    move-result v3

    if-eqz v3, :cond_42

    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    :cond_42
    :goto_42
    if-le v1, v0, :cond_57

    iget-object v3, p0, Lcom/google/common/base/Splitter$f;->d:Lcom/google/common/base/CharMatcher;

    iget-object v4, p0, Lcom/google/common/base/Splitter$f;->c:Ljava/lang/CharSequence;

    add-int/lit8 v5, v1, -0x1

    invoke-interface {v4, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/common/base/CharMatcher;->h(C)Z

    move-result v3

    if-eqz v3, :cond_57

    add-int/lit8 v1, v1, -0x1

    goto :goto_42

    :cond_57
    iget-boolean v3, p0, Lcom/google/common/base/Splitter$f;->e:Z

    if-eqz v3, :cond_60

    if-ne v0, v1, :cond_60

    iget v0, p0, Lcom/google/common/base/Splitter$f;->f:I

    goto :goto_2

    :cond_60
    iget v3, p0, Lcom/google/common/base/Splitter$f;->g:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_82

    iget-object v1, p0, Lcom/google/common/base/Splitter$f;->c:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iput v2, p0, Lcom/google/common/base/Splitter$f;->f:I

    :goto_6d
    if-le v1, v0, :cond_85

    iget-object v2, p0, Lcom/google/common/base/Splitter$f;->d:Lcom/google/common/base/CharMatcher;

    iget-object v3, p0, Lcom/google/common/base/Splitter$f;->c:Ljava/lang/CharSequence;

    add-int/lit8 v4, v1, -0x1

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/common/base/CharMatcher;->h(C)Z

    move-result v2

    if-eqz v2, :cond_85

    add-int/lit8 v1, v1, -0x1

    goto :goto_6d

    :cond_82
    sub-int/2addr v3, v4

    iput v3, p0, Lcom/google/common/base/Splitter$f;->g:I

    :cond_85
    iget-object v2, p0, Lcom/google/common/base/Splitter$f;->c:Ljava/lang/CharSequence;

    invoke-interface {v2, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_90
    invoke-virtual {p0}, Lcom/google/common/base/AbstractIterator;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method abstract f(I)I
.end method

.method abstract g(I)I
.end method

###### Class com.google.common.base.Splitter.g (com.google.common.base.Splitter$g)
.class interface abstract Lcom/google/common/base/Splitter$g;
.super Ljava/lang/Object;
.source "Splitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Splitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "g"
.end annotation


# virtual methods
.method public abstract a(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Splitter;",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
