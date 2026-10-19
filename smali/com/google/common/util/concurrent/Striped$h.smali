###### Class com.google.common.util.concurrent.Striped.h (com.google.common.util.concurrent.Striped$h)
.class final Lcom/google/common/util/concurrent/Striped$h;
.super Lcom/google/common/util/concurrent/x;
.source "Striped.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Striped;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "h"
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/locks/Condition;

.field private final b:Lcom/google/common/util/concurrent/Striped$j;


# direct methods
.method constructor <init>(Ljava/util/concurrent/locks/Condition;Lcom/google/common/util/concurrent/Striped$j;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/common/util/concurrent/x;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/Striped$h;->a:Ljava/util/concurrent/locks/Condition;

    iput-object p2, p0, Lcom/google/common/util/concurrent/Striped$h;->b:Lcom/google/common/util/concurrent/Striped$j;

    return-void
.end method


# virtual methods
.method a()Ljava/util/concurrent/locks/Condition;
    .registers 2

    iget-object v0, p0, Lcom/google/common/util/concurrent/Striped$h;->a:Ljava/util/concurrent/locks/Condition;

    return-object v0
.end method
