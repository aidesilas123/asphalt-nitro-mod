###### Class com.fyber.inneractive.sdk.measurement.a (com.fyber.inneractive.sdk.measurement.a)
.class public abstract Lcom/fyber/inneractive/sdk/measurement/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/inneractive/sdk/measurement/a$a;
    }
.end annotation


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/measurement/a;->a:Z

    return-void
.end method

###### Class com.fyber.inneractive.sdk.measurement.a.InterfaceC0164a (com.fyber.inneractive.sdk.measurement.a$a)
.class public interface abstract Lcom/fyber/inneractive/sdk/measurement/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/measurement/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a()V
.end method

.method public abstract b()V
.end method
