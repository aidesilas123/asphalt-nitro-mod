###### Class com.fyber.inneractive.sdk.protobuf.GeneratedMessageLite.c (com.fyber.inneractive.sdk.protobuf.GeneratedMessageLite$c)
.class public Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite$c;
.super Lcom/fyber/inneractive/sdk/protobuf/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite<",
        "TT;*>;>",
        "Lcom/fyber/inneractive/sdk/protobuf/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/protobuf/b;-><init>()V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite$c;->a:Lcom/fyber/inneractive/sdk/protobuf/GeneratedMessageLite;

    return-void
.end method
