###### Class com.tapjoy.internal.l2 (com.tapjoy.internal.l2)
.class public final Lcom/tapjoy/internal/l2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/reflect/Method;

.field public final synthetic b:[Ljava/lang/Object;

.field public final synthetic c:Lcom/tapjoy/internal/v2;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/v2;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .registers 4

    iput-object p1, p0, Lcom/tapjoy/internal/l2;->c:Lcom/tapjoy/internal/v2;

    iput-object p2, p0, Lcom/tapjoy/internal/l2;->a:Ljava/lang/reflect/Method;

    iput-object p3, p0, Lcom/tapjoy/internal/l2;->b:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/tapjoy/internal/l2;->a:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/tapjoy/internal/l2;->c:Lcom/tapjoy/internal/v2;

    iget-object v2, v2, Lcom/tapjoy/internal/v2;->a:Ljava/lang/Object;

    iget-object v3, p0, Lcom/tapjoy/internal/l2;->b:[Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_c} :catch_17
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_c} :catch_12
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception v1

    invoke-static {v1}, Lcom/tapjoy/internal/s9;->a(Ljava/lang/Exception;)V

    throw v0

    :catch_12
    move-exception v1

    invoke-static {v1}, Lcom/tapjoy/internal/s9;->a(Ljava/lang/Exception;)V

    throw v0

    :catch_17
    move-exception v1

    invoke-static {v1}, Lcom/tapjoy/internal/s9;->a(Ljava/lang/Exception;)V

    throw v0
.end method
