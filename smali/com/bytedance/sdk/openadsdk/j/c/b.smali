###### Class com.bytedance.sdk.openadsdk.j.c.b (com.bytedance.sdk.openadsdk.j.c.b)
.class public Lcom/bytedance/sdk/openadsdk/j/c/b;
.super Ljava/lang/Object;
.source "LogUploaderImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/j/c/b$a;
    }
.end annotation


# direct methods
.method public static a()Lcom/bytedance/sdk/openadsdk/j/c/a;
    .registers 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/j/c/c;->b()Lcom/bytedance/sdk/openadsdk/j/c/c;

    move-result-object v0

    return-object v0
.end method

###### Class com.bytedance.sdk.openadsdk.j.c.b.a (com.bytedance.sdk.openadsdk.j.c.b$a)
.class public Lcom/bytedance/sdk/openadsdk/j/c/b$a;
.super Ljava/lang/Object;
.source "LogUploaderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/j/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/j/c/b$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/j/c/b$a;->b:Lorg/json/JSONObject;

    return-void
.end method
