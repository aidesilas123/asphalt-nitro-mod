###### Class com.apm.insight.runtime.f (com.apm.insight.runtime.f)
.class public Lcom/apm/insight/runtime/f;
.super Ljava/lang/Object;


# static fields
.field private static final b:Lcom/apm/insight/runtime/f;


# instance fields
.field private a:Lcom/apm/insight/runtime/f;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/apm/insight/runtime/f$1;

    invoke-direct {v0}, Lcom/apm/insight/runtime/f$1;-><init>()V

    sput-object v0, Lcom/apm/insight/runtime/f;->b:Lcom/apm/insight/runtime/f;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    sget-object v0, Lcom/apm/insight/runtime/f;->b:Lcom/apm/insight/runtime/f;

    invoke-direct {p0, v0}, Lcom/apm/insight/runtime/f;-><init>(Lcom/apm/insight/runtime/f;)V

    return-void
.end method

.method constructor <init>(Lcom/apm/insight/runtime/f;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apm/insight/runtime/f;->a:Lcom/apm/insight/runtime/f;

    iput-object p1, p0, Lcom/apm/insight/runtime/f;->a:Lcom/apm/insight/runtime/f;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/apm/insight/runtime/f;->a:Lcom/apm/insight/runtime/f;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Lcom/apm/insight/runtime/f;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_9
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/apm/insight/runtime/f;->a:Lcom/apm/insight/runtime/f;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Lcom/apm/insight/runtime/f;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_9
    const/4 p1, 0x0

    return-object p1
.end method

###### Class com.apm.insight.runtime.f.AnonymousClass1 (com.apm.insight.runtime.f$1)
.class final Lcom/apm/insight/runtime/f$1;
.super Lcom/apm/insight/runtime/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apm/insight/runtime/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field a:Lcom/apm/insight/entity/Header;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/apm/insight/runtime/f;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apm/insight/runtime/f$1;->a:Lcom/apm/insight/entity/Header;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/apm/insight/runtime/f$1;->a:Lcom/apm/insight/entity/Header;

    if-nez v0, :cond_e

    invoke-static {}, Lcom/apm/insight/i;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/apm/insight/entity/Header;->b(Landroid/content/Context;)Lcom/apm/insight/entity/Header;

    move-result-object v0

    iput-object v0, p0, Lcom/apm/insight/runtime/f$1;->a:Lcom/apm/insight/entity/Header;

    :cond_e
    iget-object v0, p0, Lcom/apm/insight/runtime/f$1;->a:Lcom/apm/insight/entity/Header;

    invoke-virtual {v0}, Lcom/apm/insight/entity/Header;->f()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
