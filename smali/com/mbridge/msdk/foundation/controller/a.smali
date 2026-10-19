###### Class com.mbridge.msdk.foundation.controller.a (com.mbridge.msdk.foundation.controller.a)
.class public final Lcom/mbridge/msdk/foundation/controller/a;
.super Ljava/lang/Object;
.source "CandidateController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/foundation/controller/a$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/mbridge/msdk/foundation/b/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/controller/a;->a:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/mbridge/msdk/foundation/controller/a$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/mbridge/msdk/foundation/controller/a;-><init>()V

    return-void
.end method

.method public static a()Lcom/mbridge/msdk/foundation/controller/a;
    .registers 1

    sget-object v0, Lcom/mbridge/msdk/foundation/controller/a$a;->a:Lcom/mbridge/msdk/foundation/controller/a;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/mbridge/msdk/foundation/b/d;
    .registers 4

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/controller/a;->a:Ljava/util/HashMap;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/controller/a;->a:Ljava/util/HashMap;

    :cond_b
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/controller/a;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/controller/a;->a:Ljava/util/HashMap;

    if-nez v0, :cond_1e

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/controller/a;->a:Ljava/util/HashMap;

    :cond_1e
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/controller/a;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object p2, p0, Lcom/mbridge/msdk/foundation/controller/a;->a:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mbridge/msdk/foundation/b/d;

    goto :goto_3a

    :cond_2f
    new-instance v0, Lcom/mbridge/msdk/foundation/b/d;

    invoke-direct {v0, p1, p2}, Lcom/mbridge/msdk/foundation/b/d;-><init>(Ljava/lang/String;Lorg/json/JSONArray;)V

    iget-object p2, p0, Lcom/mbridge/msdk/foundation/controller/a;->a:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v0

    :goto_3a
    return-object p1

    :cond_3b
    iget-object p2, p0, Lcom/mbridge/msdk/foundation/controller/a;->a:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mbridge/msdk/foundation/b/d;

    return-object p1
.end method

###### Class com.mbridge.msdk.foundation.controller.a.AnonymousClass1 (com.mbridge.msdk.foundation.controller.a$1)
.class final synthetic Lcom/mbridge/msdk/foundation/controller/a$1;
.super Ljava/lang/Object;
.source "CandidateController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/foundation/controller/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.mbridge.msdk.foundation.controller.a.C0400a (com.mbridge.msdk.foundation.controller.a$a)
.class final Lcom/mbridge/msdk/foundation/controller/a$a;
.super Ljava/lang/Object;
.source "CandidateController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/foundation/controller/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static a:Lcom/mbridge/msdk/foundation/controller/a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/mbridge/msdk/foundation/controller/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mbridge/msdk/foundation/controller/a;-><init>(Lcom/mbridge/msdk/foundation/controller/a$1;)V

    sput-object v0, Lcom/mbridge/msdk/foundation/controller/a$a;->a:Lcom/mbridge/msdk/foundation/controller/a;

    return-void
.end method
