###### Class io.didomi.drawable.z9 (io.didomi.sdk.z9)
.class public final synthetic Lio/didomi/sdk/z9;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/didomi/sdk/functionalinterfaces/DidomiCallable;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/Didomi;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lio/didomi/sdk/functionalinterfaces/DidomiVendorStatusListener;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/Didomi;Ljava/lang/String;Lio/didomi/sdk/functionalinterfaces/DidomiVendorStatusListener;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/z9;->a:Lio/didomi/sdk/Didomi;

    iput-object p2, p0, Lio/didomi/sdk/z9;->b:Ljava/lang/String;

    iput-object p3, p0, Lio/didomi/sdk/z9;->c:Lio/didomi/sdk/functionalinterfaces/DidomiVendorStatusListener;

    return-void
.end method


# virtual methods
.method public final call()V
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/z9;->a:Lio/didomi/sdk/Didomi;

    iget-object v1, p0, Lio/didomi/sdk/z9;->b:Ljava/lang/String;

    iget-object v2, p0, Lio/didomi/sdk/z9;->c:Lio/didomi/sdk/functionalinterfaces/DidomiVendorStatusListener;

    invoke-static {v0, v1, v2}, Lio/didomi/sdk/Didomi;->b(Lio/didomi/sdk/Didomi;Ljava/lang/String;Lio/didomi/sdk/functionalinterfaces/DidomiVendorStatusListener;)V

    return-void
.end method
