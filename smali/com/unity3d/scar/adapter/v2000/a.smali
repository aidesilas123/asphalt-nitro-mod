###### Class com.unity3d.scar.adapter.v2000.a (com.unity3d.scar.adapter.v2000.a)
.class public Lcom/unity3d/scar/adapter/v2000/a;
.super Lcom/unity3d/scar/adapter/common/i;
.source "ScarAdapter.java"

# interfaces
.implements Lcom/unity3d/scar/adapter/common/d;


# instance fields
.field private e:Lcom/unity3d/scar/adapter/common/l/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/unity3d/scar/adapter/common/l/g<",
            "Lcom/google/android/gms/ads/query/QueryInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/unity3d/scar/adapter/common/b;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/scar/adapter/common/b<",
            "Lcom/unity3d/scar/adapter/common/j;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/unity3d/scar/adapter/common/i;-><init>(Lcom/unity3d/scar/adapter/common/b;)V

    new-instance p1, Lcom/unity3d/scar/adapter/common/l/g;

    invoke-direct {p1}, Lcom/unity3d/scar/adapter/common/l/g;-><init>()V

    iput-object p1, p0, Lcom/unity3d/scar/adapter/v2000/a;->e:Lcom/unity3d/scar/adapter/common/l/g;

    new-instance v0, Lcom/unity3d/scar/adapter/v2000/c/b;

    invoke-direct {v0, p1}, Lcom/unity3d/scar/adapter/v2000/c/b;-><init>(Lcom/unity3d/scar/adapter/common/l/g;)V

    iput-object v0, p0, Lcom/unity3d/scar/adapter/common/i;->a:Lcom/unity3d/scar/adapter/common/l/c;

    return-void
.end method

.method static synthetic g(Lcom/unity3d/scar/adapter/v2000/a;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/unity3d/scar/adapter/common/i;->b:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic h(Lcom/unity3d/scar/adapter/v2000/a;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/unity3d/scar/adapter/common/i;->b:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public c(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/unity3d/scar/adapter/common/scarads/c;IILcom/unity3d/scar/adapter/common/e;)V
    .registers 18

    move-object v0, p0

    new-instance v10, Lcom/unity3d/scar/adapter/v2000/b/c;

    iget-object v1, v0, Lcom/unity3d/scar/adapter/v2000/a;->e:Lcom/unity3d/scar/adapter/common/l/g;

    invoke-virtual {p3}, Lcom/unity3d/scar/adapter/common/scarads/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/unity3d/scar/adapter/common/l/g;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/ads/query/QueryInfo;

    iget-object v8, v0, Lcom/unity3d/scar/adapter/common/i;->d:Lcom/unity3d/scar/adapter/common/b;

    move-object v1, v10

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move/from16 v7, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/unity3d/scar/adapter/v2000/b/c;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/query/QueryInfo;Landroid/widget/RelativeLayout;Lcom/unity3d/scar/adapter/common/scarads/c;IILcom/unity3d/scar/adapter/common/b;Lcom/unity3d/scar/adapter/common/e;)V

    new-instance v1, Lcom/unity3d/scar/adapter/v2000/a$c;

    invoke-direct {v1, p0, v10}, Lcom/unity3d/scar/adapter/v2000/a$c;-><init>(Lcom/unity3d/scar/adapter/v2000/a;Lcom/unity3d/scar/adapter/v2000/b/c;)V

    invoke-static {v1}, Lcom/unity3d/scar/adapter/common/Utils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public e(Landroid/content/Context;Lcom/unity3d/scar/adapter/common/scarads/c;Lcom/unity3d/scar/adapter/common/g;)V
    .registers 11

    new-instance v6, Lcom/unity3d/scar/adapter/v2000/b/g;

    iget-object v0, p0, Lcom/unity3d/scar/adapter/v2000/a;->e:Lcom/unity3d/scar/adapter/common/l/g;

    invoke-virtual {p2}, Lcom/unity3d/scar/adapter/common/scarads/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity3d/scar/adapter/common/l/g;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/ads/query/QueryInfo;

    iget-object v4, p0, Lcom/unity3d/scar/adapter/common/i;->d:Lcom/unity3d/scar/adapter/common/b;

    move-object v0, v6

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/unity3d/scar/adapter/v2000/b/g;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/query/QueryInfo;Lcom/unity3d/scar/adapter/common/scarads/c;Lcom/unity3d/scar/adapter/common/b;Lcom/unity3d/scar/adapter/common/g;)V

    new-instance p1, Lcom/unity3d/scar/adapter/v2000/a$b;

    invoke-direct {p1, p0, v6, p2}, Lcom/unity3d/scar/adapter/v2000/a$b;-><init>(Lcom/unity3d/scar/adapter/v2000/a;Lcom/unity3d/scar/adapter/v2000/b/g;Lcom/unity3d/scar/adapter/common/scarads/c;)V

    invoke-static {p1}, Lcom/unity3d/scar/adapter/common/Utils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public f(Landroid/content/Context;Lcom/unity3d/scar/adapter/common/scarads/c;Lcom/unity3d/scar/adapter/common/f;)V
    .registers 11

    new-instance v6, Lcom/unity3d/scar/adapter/v2000/b/e;

    iget-object v0, p0, Lcom/unity3d/scar/adapter/v2000/a;->e:Lcom/unity3d/scar/adapter/common/l/g;

    invoke-virtual {p2}, Lcom/unity3d/scar/adapter/common/scarads/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unity3d/scar/adapter/common/l/g;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/ads/query/QueryInfo;

    iget-object v4, p0, Lcom/unity3d/scar/adapter/common/i;->d:Lcom/unity3d/scar/adapter/common/b;

    move-object v0, v6

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/unity3d/scar/adapter/v2000/b/e;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/query/QueryInfo;Lcom/unity3d/scar/adapter/common/scarads/c;Lcom/unity3d/scar/adapter/common/b;Lcom/unity3d/scar/adapter/common/f;)V

    new-instance p1, Lcom/unity3d/scar/adapter/v2000/a$a;

    invoke-direct {p1, p0, v6, p2}, Lcom/unity3d/scar/adapter/v2000/a$a;-><init>(Lcom/unity3d/scar/adapter/v2000/a;Lcom/unity3d/scar/adapter/v2000/b/e;Lcom/unity3d/scar/adapter/common/scarads/c;)V

    invoke-static {p1}, Lcom/unity3d/scar/adapter/common/Utils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.unity3d.scar.adapter.v2000.a.RunnableC0451a (com.unity3d.scar.adapter.v2000.a$a)
.class Lcom/unity3d/scar/adapter/v2000/a$a;
.super Ljava/lang/Object;
.source "ScarAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/scar/adapter/v2000/a;->f(Landroid/content/Context;Lcom/unity3d/scar/adapter/common/scarads/c;Lcom/unity3d/scar/adapter/common/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unity3d/scar/adapter/v2000/b/e;

.field final synthetic b:Lcom/unity3d/scar/adapter/common/scarads/c;

.field final synthetic c:Lcom/unity3d/scar/adapter/v2000/a;


# direct methods
.method constructor <init>(Lcom/unity3d/scar/adapter/v2000/a;Lcom/unity3d/scar/adapter/v2000/b/e;Lcom/unity3d/scar/adapter/common/scarads/c;)V
    .registers 4

    iput-object p1, p0, Lcom/unity3d/scar/adapter/v2000/a$a;->c:Lcom/unity3d/scar/adapter/v2000/a;

    iput-object p2, p0, Lcom/unity3d/scar/adapter/v2000/a$a;->a:Lcom/unity3d/scar/adapter/v2000/b/e;

    iput-object p3, p0, Lcom/unity3d/scar/adapter/v2000/a$a;->b:Lcom/unity3d/scar/adapter/common/scarads/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/unity3d/scar/adapter/v2000/a$a;->a:Lcom/unity3d/scar/adapter/v2000/b/e;

    new-instance v1, Lcom/unity3d/scar/adapter/v2000/a$a$a;

    invoke-direct {v1, p0}, Lcom/unity3d/scar/adapter/v2000/a$a$a;-><init>(Lcom/unity3d/scar/adapter/v2000/a$a;)V

    invoke-virtual {v0, v1}, Lcom/unity3d/scar/adapter/v2000/b/a;->a(Lcom/unity3d/scar/adapter/common/scarads/b;)V

    return-void
.end method

###### Class com.unity3d.scar.adapter.v2000.a.RunnableC0451a.C0452a (com.unity3d.scar.adapter.v2000.a$a$a)
.class Lcom/unity3d/scar/adapter/v2000/a$a$a;
.super Ljava/lang/Object;
.source "ScarAdapter.java"

# interfaces
.implements Lcom/unity3d/scar/adapter/common/scarads/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/scar/adapter/v2000/a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unity3d/scar/adapter/v2000/a$a;


# direct methods
.method constructor <init>(Lcom/unity3d/scar/adapter/v2000/a$a;)V
    .registers 2

    iput-object p1, p0, Lcom/unity3d/scar/adapter/v2000/a$a$a;->a:Lcom/unity3d/scar/adapter/v2000/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdLoaded()V
    .registers 4

    iget-object v0, p0, Lcom/unity3d/scar/adapter/v2000/a$a$a;->a:Lcom/unity3d/scar/adapter/v2000/a$a;

    iget-object v0, v0, Lcom/unity3d/scar/adapter/v2000/a$a;->c:Lcom/unity3d/scar/adapter/v2000/a;

    invoke-static {v0}, Lcom/unity3d/scar/adapter/v2000/a;->g(Lcom/unity3d/scar/adapter/v2000/a;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/scar/adapter/v2000/a$a$a;->a:Lcom/unity3d/scar/adapter/v2000/a$a;

    iget-object v1, v1, Lcom/unity3d/scar/adapter/v2000/a$a;->b:Lcom/unity3d/scar/adapter/common/scarads/c;

    invoke-virtual {v1}, Lcom/unity3d/scar/adapter/common/scarads/c;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/unity3d/scar/adapter/v2000/a$a$a;->a:Lcom/unity3d/scar/adapter/v2000/a$a;

    iget-object v2, v2, Lcom/unity3d/scar/adapter/v2000/a$a;->a:Lcom/unity3d/scar/adapter/v2000/b/e;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

###### Class com.unity3d.scar.adapter.v2000.a.b (com.unity3d.scar.adapter.v2000.a$b)
.class Lcom/unity3d/scar/adapter/v2000/a$b;
.super Ljava/lang/Object;
.source "ScarAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/scar/adapter/v2000/a;->e(Landroid/content/Context;Lcom/unity3d/scar/adapter/common/scarads/c;Lcom/unity3d/scar/adapter/common/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unity3d/scar/adapter/v2000/b/g;

.field final synthetic b:Lcom/unity3d/scar/adapter/common/scarads/c;

.field final synthetic c:Lcom/unity3d/scar/adapter/v2000/a;


# direct methods
.method constructor <init>(Lcom/unity3d/scar/adapter/v2000/a;Lcom/unity3d/scar/adapter/v2000/b/g;Lcom/unity3d/scar/adapter/common/scarads/c;)V
    .registers 4

    iput-object p1, p0, Lcom/unity3d/scar/adapter/v2000/a$b;->c:Lcom/unity3d/scar/adapter/v2000/a;

    iput-object p2, p0, Lcom/unity3d/scar/adapter/v2000/a$b;->a:Lcom/unity3d/scar/adapter/v2000/b/g;

    iput-object p3, p0, Lcom/unity3d/scar/adapter/v2000/a$b;->b:Lcom/unity3d/scar/adapter/common/scarads/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/unity3d/scar/adapter/v2000/a$b;->a:Lcom/unity3d/scar/adapter/v2000/b/g;

    new-instance v1, Lcom/unity3d/scar/adapter/v2000/a$b$a;

    invoke-direct {v1, p0}, Lcom/unity3d/scar/adapter/v2000/a$b$a;-><init>(Lcom/unity3d/scar/adapter/v2000/a$b;)V

    invoke-virtual {v0, v1}, Lcom/unity3d/scar/adapter/v2000/b/a;->a(Lcom/unity3d/scar/adapter/common/scarads/b;)V

    return-void
.end method

###### Class com.unity3d.scar.adapter.v2000.a.b.C0453a (com.unity3d.scar.adapter.v2000.a$b$a)
.class Lcom/unity3d/scar/adapter/v2000/a$b$a;
.super Ljava/lang/Object;
.source "ScarAdapter.java"

# interfaces
.implements Lcom/unity3d/scar/adapter/common/scarads/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/scar/adapter/v2000/a$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unity3d/scar/adapter/v2000/a$b;


# direct methods
.method constructor <init>(Lcom/unity3d/scar/adapter/v2000/a$b;)V
    .registers 2

    iput-object p1, p0, Lcom/unity3d/scar/adapter/v2000/a$b$a;->a:Lcom/unity3d/scar/adapter/v2000/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdLoaded()V
    .registers 4

    iget-object v0, p0, Lcom/unity3d/scar/adapter/v2000/a$b$a;->a:Lcom/unity3d/scar/adapter/v2000/a$b;

    iget-object v0, v0, Lcom/unity3d/scar/adapter/v2000/a$b;->c:Lcom/unity3d/scar/adapter/v2000/a;

    invoke-static {v0}, Lcom/unity3d/scar/adapter/v2000/a;->h(Lcom/unity3d/scar/adapter/v2000/a;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/scar/adapter/v2000/a$b$a;->a:Lcom/unity3d/scar/adapter/v2000/a$b;

    iget-object v1, v1, Lcom/unity3d/scar/adapter/v2000/a$b;->b:Lcom/unity3d/scar/adapter/common/scarads/c;

    invoke-virtual {v1}, Lcom/unity3d/scar/adapter/common/scarads/c;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/unity3d/scar/adapter/v2000/a$b$a;->a:Lcom/unity3d/scar/adapter/v2000/a$b;

    iget-object v2, v2, Lcom/unity3d/scar/adapter/v2000/a$b;->a:Lcom/unity3d/scar/adapter/v2000/b/g;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

###### Class com.unity3d.scar.adapter.v2000.a.c (com.unity3d.scar.adapter.v2000.a$c)
.class Lcom/unity3d/scar/adapter/v2000/a$c;
.super Ljava/lang/Object;
.source "ScarAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/scar/adapter/v2000/a;->c(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/unity3d/scar/adapter/common/scarads/c;IILcom/unity3d/scar/adapter/common/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unity3d/scar/adapter/v2000/b/c;

.field final synthetic b:Lcom/unity3d/scar/adapter/v2000/a;


# direct methods
.method constructor <init>(Lcom/unity3d/scar/adapter/v2000/a;Lcom/unity3d/scar/adapter/v2000/b/c;)V
    .registers 3

    iput-object p1, p0, Lcom/unity3d/scar/adapter/v2000/a$c;->b:Lcom/unity3d/scar/adapter/v2000/a;

    iput-object p2, p0, Lcom/unity3d/scar/adapter/v2000/a$c;->a:Lcom/unity3d/scar/adapter/v2000/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/unity3d/scar/adapter/v2000/a$c;->a:Lcom/unity3d/scar/adapter/v2000/b/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/unity3d/scar/adapter/v2000/b/a;->a(Lcom/unity3d/scar/adapter/common/scarads/b;)V

    return-void
.end method
