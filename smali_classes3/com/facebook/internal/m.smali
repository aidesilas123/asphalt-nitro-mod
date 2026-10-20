###### Class com.facebook.internal.m (com.facebook.internal.m)
.class public final synthetic Lcom/facebook/internal/m;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:[Ljava/io/File;


# direct methods
.method public synthetic constructor <init>([Ljava/io/File;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/internal/m;->a:[Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/internal/m;->a:[Ljava/io/File;

    invoke-static {v0}, Lcom/facebook/internal/FileLruCache;->b([Ljava/io/File;)V

    return-void
.end method
