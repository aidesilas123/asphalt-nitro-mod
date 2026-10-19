###### Class com.bytedance.sdk.component.g.e (com.bytedance.sdk.component.g.e)
.class public Lcom/bytedance/sdk/component/g/e;
.super Ljava/lang/Object;
.source "TTBaseExecutor.java"


# static fields
.field private static a:Lcom/bytedance/sdk/component/g/j;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/bytedance/sdk/component/g/e$1;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/g/e$1;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/component/g/e;->a:Lcom/bytedance/sdk/component/g/j;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/bytedance/sdk/component/g/j;
    .registers 1

    sget-object v0, Lcom/bytedance/sdk/component/g/e;->a:Lcom/bytedance/sdk/component/g/j;

    return-object v0
.end method

.method public static a(Lcom/bytedance/sdk/component/g/j;)V
    .registers 1

    sput-object p0, Lcom/bytedance/sdk/component/g/e;->a:Lcom/bytedance/sdk/component/g/j;

    return-void
.end method

###### Class com.bytedance.sdk.component.g.e.AnonymousClass1 (com.bytedance.sdk.component.g.e$1)
.class final Lcom/bytedance/sdk/component/g/e$1;
.super Ljava/lang/Object;
.source "TTBaseExecutor.java"

# interfaces
.implements Lcom/bytedance/sdk/component/g/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/g/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createThreadFactory(ILjava/lang/String;)Lcom/bytedance/sdk/component/g/i;
    .registers 4

    new-instance v0, Lcom/bytedance/sdk/component/g/i;

    invoke-direct {v0, p1, p2}, Lcom/bytedance/sdk/component/g/i;-><init>(ILjava/lang/String;)V

    return-object v0
.end method
