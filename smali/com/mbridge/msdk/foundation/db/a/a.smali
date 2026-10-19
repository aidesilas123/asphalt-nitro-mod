###### Class com.mbridge.msdk.foundation.db.a.a (com.mbridge.msdk.foundation.db.a.a)
.class public final Lcom/mbridge/msdk/foundation/db/a/a;
.super Ljava/lang/Object;
.source "ReplaceTempDaoMiddle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/foundation/db/a/a$a;
    }
.end annotation


# instance fields
.field private a:Lcom/mbridge/msdk/foundation/db/m;

.field private b:Lcom/mbridge/msdk/foundation/same/a/b;


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/mbridge/msdk/foundation/same/a/b;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Lcom/mbridge/msdk/foundation/same/a/b;-><init>(I)V

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/db/a/a;->b:Lcom/mbridge/msdk/foundation/same/a/b;

    :try_start_c
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/b;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/db/h;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/db/h;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/db/m;->a(Lcom/mbridge/msdk/foundation/db/g;)Lcom/mbridge/msdk/foundation/db/m;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/db/a/a;->a:Lcom/mbridge/msdk/foundation/db/m;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/db/m;->a()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mbridge/msdk/foundation/db/a/a;->a(Lorg/json/JSONObject;Z)V
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_27

    goto :goto_2b

    :catchall_27
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2b
    return-void
.end method

.method synthetic constructor <init>(Lcom/mbridge/msdk/foundation/db/a/a$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/mbridge/msdk/foundation/db/a/a;-><init>()V

    return-void
.end method

.method public static a()Lcom/mbridge/msdk/foundation/db/a/a;
    .registers 1

    invoke-static {}, Lcom/mbridge/msdk/foundation/db/a/a$a;->a()Lcom/mbridge/msdk/foundation/db/a/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/mbridge/msdk/foundation/db/a/a;)Lcom/mbridge/msdk/foundation/db/m;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/foundation/db/a/a;->a:Lcom/mbridge/msdk/foundation/db/m;

    return-object p0
.end method

.method static synthetic b(Lcom/mbridge/msdk/foundation/db/a/a;)Lcom/mbridge/msdk/foundation/same/a/b;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/foundation/db/a/a;->b:Lcom/mbridge/msdk/foundation/same/a/b;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 4

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/db/a/a;->b:Lcom/mbridge/msdk/foundation/same/a/b;

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/foundation/same/a/b;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_9

    return-object v0

    :cond_9
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/db/a/a;->a:Lcom/mbridge/msdk/foundation/db/m;

    if-nez v1, :cond_e

    return-object v0

    :cond_e
    invoke-virtual {v1, p1}, Lcom/mbridge/msdk/foundation/db/m;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/db/a/a;->b:Lcom/mbridge/msdk/foundation/same/a/b;

    invoke-virtual {v1, p1, v0}, Lcom/mbridge/msdk/foundation/same/a/b;->a(Ljava/lang/String;Lorg/json/JSONObject;)Z

    :cond_19
    return-object v0
.end method

.method public final a(Lorg/json/JSONObject;Z)V
    .registers 8

    if-eqz p1, :cond_32

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/mbridge/msdk/foundation/same/a/b;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Lcom/mbridge/msdk/foundation/same/a/b;-><init>(I)V

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v4, p0, Lcom/mbridge/msdk/foundation/db/a/a;->b:Lcom/mbridge/msdk/foundation/same/a/b;

    invoke-virtual {v4, v2, v3}, Lcom/mbridge/msdk/foundation/same/a/b;->a(Ljava/lang/String;Lorg/json/JSONObject;)Z

    invoke-virtual {v1, v2, v3}, Lcom/mbridge/msdk/foundation/same/a/b;->a(Ljava/lang/String;Lorg/json/JSONObject;)Z

    goto :goto_d

    :cond_26
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/f/b;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p1

    new-instance v0, Lcom/mbridge/msdk/foundation/db/a/a$1;

    invoke-direct {v0, p0, p2, v1}, Lcom/mbridge/msdk/foundation/db/a/a$1;-><init>(Lcom/mbridge/msdk/foundation/db/a/a;ZLcom/mbridge/msdk/foundation/same/a/b;)V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_32
    return-void
.end method

.method public final b()Lorg/json/JSONArray;
    .registers 3

    new-instance v0, Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/db/a/a;->b:Lcom/mbridge/msdk/foundation/same/a/b;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/same/a/b;->a()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

###### Class com.mbridge.msdk.foundation.db.a.a.AnonymousClass1 (com.mbridge.msdk.foundation.db.a.a$1)
.class final Lcom/mbridge/msdk/foundation/db/a/a$1;
.super Ljava/lang/Object;
.source "ReplaceTempDaoMiddle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/foundation/db/a/a;->a(Lorg/json/JSONObject;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/mbridge/msdk/foundation/same/a/b;

.field final synthetic c:Lcom/mbridge/msdk/foundation/db/a/a;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/foundation/db/a/a;ZLcom/mbridge/msdk/foundation/same/a/b;)V
    .registers 4

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/db/a/a$1;->c:Lcom/mbridge/msdk/foundation/db/a/a;

    iput-boolean p2, p0, Lcom/mbridge/msdk/foundation/db/a/a$1;->a:Z

    iput-object p3, p0, Lcom/mbridge/msdk/foundation/db/a/a$1;->b:Lcom/mbridge/msdk/foundation/same/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-boolean v0, p0, Lcom/mbridge/msdk/foundation/db/a/a$1;->a:Z

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/db/a/a$1;->c:Lcom/mbridge/msdk/foundation/db/a/a;

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/db/a/a;->a(Lcom/mbridge/msdk/foundation/db/a/a;)Lcom/mbridge/msdk/foundation/db/m;

    move-result-object v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/db/a/a$1;->b:Lcom/mbridge/msdk/foundation/same/a/b;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/same/a/b;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/mbridge/msdk/foundation/db/a/a$1;->c:Lcom/mbridge/msdk/foundation/db/a/a;

    invoke-static {v2}, Lcom/mbridge/msdk/foundation/db/a/a;->a(Lcom/mbridge/msdk/foundation/db/a/a;)Lcom/mbridge/msdk/foundation/db/m;

    move-result-object v2

    iget-object v3, p0, Lcom/mbridge/msdk/foundation/db/a/a$1;->c:Lcom/mbridge/msdk/foundation/db/a/a;

    invoke-static {v3}, Lcom/mbridge/msdk/foundation/db/a/a;->b(Lcom/mbridge/msdk/foundation/db/a/a;)Lcom/mbridge/msdk/foundation/same/a/b;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/mbridge/msdk/foundation/same/a/b;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/mbridge/msdk/foundation/db/m;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_16

    :cond_36
    return-void
.end method

###### Class com.mbridge.msdk.foundation.db.a.a.C0401a (com.mbridge.msdk.foundation.db.a.a$a)
.class final Lcom/mbridge/msdk/foundation/db/a/a$a;
.super Ljava/lang/Object;
.source "ReplaceTempDaoMiddle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/foundation/db/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static a:Lcom/mbridge/msdk/foundation/db/a/a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/mbridge/msdk/foundation/db/a/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mbridge/msdk/foundation/db/a/a;-><init>(Lcom/mbridge/msdk/foundation/db/a/a$1;)V

    sput-object v0, Lcom/mbridge/msdk/foundation/db/a/a$a;->a:Lcom/mbridge/msdk/foundation/db/a/a;

    return-void
.end method

.method static synthetic a()Lcom/mbridge/msdk/foundation/db/a/a;
    .registers 1

    sget-object v0, Lcom/mbridge/msdk/foundation/db/a/a$a;->a:Lcom/mbridge/msdk/foundation/db/a/a;

    return-object v0
.end method
