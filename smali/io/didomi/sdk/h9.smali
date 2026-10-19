###### Class io.didomi.drawable.h9 (io.didomi.sdk.h9)
.class public Lio/didomi/sdk/h9;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/didomi/sdk/h9$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00f4\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\r\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0017\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0019\n\u0002\u0010$\n\u0002\u0008\u000b\u0008\u0017\u0018\u00002\u00020\u0001BI\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0014H\u0000\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0015\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0017\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0015\u0010\u001d\u001a\u00020\u00182\u0006\u0010\u001c\u001a\u00020\u001b\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0015\u0010 \u001a\u00020\u00182\u0006\u0010\u001f\u001a\u00020\u0014\u00a2\u0006\u0004\u0008 \u0010\u001aJ\u0015\u0010\"\u001a\u00020\u00182\u0006\u0010!\u001a\u00020\u001b\u00a2\u0006\u0004\u0008\"\u0010\u001eJ\r\u0010$\u001a\u00020#\u00a2\u0006\u0004\u0008$\u0010%J\u0015\u0010&\u001a\u00020\u00182\u0006\u0010!\u001a\u00020\u001b\u00a2\u0006\u0004\u0008&\u0010\u001eJ\u0015\u0010)\u001a\u00020\u00182\u0006\u0010(\u001a\u00020\'\u00a2\u0006\u0004\u0008)\u0010*J\u0015\u0010+\u001a\u00020#2\u0006\u0010!\u001a\u00020\u001b\u00a2\u0006\u0004\u0008+\u0010,J\u0015\u0010.\u001a\u00020-2\u0006\u0010!\u001a\u00020\u001b\u00a2\u0006\u0004\u0008.\u0010/J)\u00104\u001a\u0016\u0012\u0004\u0012\u000201\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020302\u0018\u0001002\u0006\u0010!\u001a\u00020\u001b\u00a2\u0006\u0004\u00084\u00105J\u001d\u00107\u001a\u0008\u0012\u0004\u0012\u000206022\u0006\u0010!\u001a\u00020\u001bH\u0000\u00a2\u0006\u0004\u00087\u00108J\u0015\u00109\u001a\u00020#2\u0006\u0010!\u001a\u00020\u001b\u00a2\u0006\u0004\u00089\u0010,J\u0015\u0010:\u001a\u00020#2\u0006\u0010!\u001a\u00020\u001b\u00a2\u0006\u0004\u0008:\u0010,J\u0015\u0010<\u001a\u00020;2\u0006\u0010!\u001a\u00020\u001b\u00a2\u0006\u0004\u0008<\u0010=J)\u0010>\u001a\u0016\u0012\u0004\u0012\u000201\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020302\u0018\u0001002\u0006\u0010!\u001a\u00020\u001b\u00a2\u0006\u0004\u0008>\u00105J)\u0010?\u001a\u0016\u0012\u0004\u0012\u000201\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020302\u0018\u0001002\u0006\u0010!\u001a\u00020\u001b\u00a2\u0006\u0004\u0008?\u00105J)\u0010@\u001a\u0016\u0012\u0004\u0012\u000201\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020302\u0018\u0001002\u0006\u0010!\u001a\u00020\u001b\u00a2\u0006\u0004\u0008@\u00105J)\u0010B\u001a\u0016\u0012\u0004\u0012\u000201\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020A02\u0018\u0001002\u0006\u0010!\u001a\u00020\u001b\u00a2\u0006\u0004\u0008B\u00105J\u001d\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u000206022\u0006\u0010!\u001a\u00020\u001bH\u0000\u00a2\u0006\u0004\u0008\u0015\u00108J\u0017\u0010C\u001a\u0002012\u0006\u0010!\u001a\u00020\u001bH\u0000\u00a2\u0006\u0004\u0008C\u0010DJ\u000f\u0010F\u001a\u00020EH\u0000\u00a2\u0006\u0004\u0008F\u0010GJ\u000f\u0010\u001d\u001a\u000201H\u0000\u00a2\u0006\u0004\u0008\u001d\u0010HJ\u0019\u0010I\u001a\u0004\u0018\u0001012\u0006\u0010!\u001a\u00020\u001bH\u0000\u00a2\u0006\u0004\u0008I\u0010DJ\u0017\u0010J\u001a\u0002012\u0006\u0010!\u001a\u00020\u001bH\u0000\u00a2\u0006\u0004\u0008J\u0010DJ\u0017\u0010K\u001a\u00020E2\u0006\u0010!\u001a\u00020\u001bH\u0000\u00a2\u0006\u0004\u0008K\u0010LJ\u0019\u0010M\u001a\u0004\u0018\u0001012\u0006\u0010!\u001a\u00020\u001bH\u0000\u00a2\u0006\u0004\u0008M\u0010DJ\u000f\u0010N\u001a\u00020EH\u0000\u00a2\u0006\u0004\u0008N\u0010GJ\u0019\u0010O\u001a\u0004\u0018\u0001012\u0006\u0010!\u001a\u00020\u001bH\u0000\u00a2\u0006\u0004\u0008O\u0010DJ\u0015\u0010Q\u001a\u00020\u00182\u0006\u0010P\u001a\u00020\u0014\u00a2\u0006\u0004\u0008Q\u0010\u001aJ\r\u0010\u0019\u001a\u00020#\u00a2\u0006\u0004\u0008\u0019\u0010%J\r\u0010)\u001a\u00020#\u00a2\u0006\u0004\u0008)\u0010%J\u0015\u0010R\u001a\u00020\u00142\u0006\u0010!\u001a\u00020\u001b\u00a2\u0006\u0004\u0008R\u0010SJ\u0015\u0010T\u001a\u00020#2\u0006\u0010!\u001a\u00020\u001b\u00a2\u0006\u0004\u0008T\u0010,J\u0015\u0010U\u001a\u00020#2\u0006\u0010!\u001a\u00020\u001b\u00a2\u0006\u0004\u0008U\u0010,J\u0015\u0010V\u001a\u00020#2\u0006\u0010!\u001a\u00020\u001b\u00a2\u0006\u0004\u0008V\u0010,J\r\u0010X\u001a\u00020W\u00a2\u0006\u0004\u0008X\u0010YJ\r\u0010Z\u001a\u00020W\u00a2\u0006\u0004\u0008Z\u0010YJ\u0015\u0010)\u001a\u00020\u00182\u0006\u0010[\u001a\u00020\u0014\u00a2\u0006\u0004\u0008)\u0010\u001aJ\r\u0010\\\u001a\u00020\u0018\u00a2\u0006\u0004\u0008\\\u0010]J\r\u0010^\u001a\u00020\u0018\u00a2\u0006\u0004\u0008^\u0010]J\u001d\u0010 \u001a\u00020\u00182\u0006\u0010!\u001a\u00020\u001b2\u0006\u0010[\u001a\u00020\u0014\u00a2\u0006\u0004\u0008 \u0010_J\u001d\u0010)\u001a\u00020\u00182\u0006\u0010!\u001a\u00020\u001b2\u0006\u0010`\u001a\u00020\u0014\u00a2\u0006\u0004\u0008)\u0010_J\u001d\u0010\u0019\u001a\u00020\u00182\u0006\u0010!\u001a\u00020\u001b2\u0006\u0010a\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u0019\u0010_J\u0015\u0010c\u001a\u00020b2\u0006\u0010!\u001a\u00020\u001b\u00a2\u0006\u0004\u0008c\u0010dJ\u0015\u0010f\u001a\u00020e2\u0006\u0010!\u001a\u00020\u001b\u00a2\u0006\u0004\u0008f\u0010gJ\u0013\u0010j\u001a\u0008\u0012\u0004\u0012\u00020i0h\u00a2\u0006\u0004\u0008j\u0010kJ\u0017\u0010)\u001a\u00020#2\u0006\u0010!\u001a\u00020\u001bH\u0002\u00a2\u0006\u0004\u0008)\u0010,J\u0017\u0010)\u001a\u00020#2\u0006\u0010l\u001a\u000201H\u0002\u00a2\u0006\u0004\u0008)\u0010mJ\u0019\u0010\u0019\u001a\u0004\u0018\u0001062\u0006\u0010n\u001a\u000201H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010oJ\u0017\u0010p\u001a\u00020#2\u0006\u0010!\u001a\u00020\u001bH\u0002\u00a2\u0006\u0004\u0008p\u0010,J\u0017\u0010q\u001a\u0002012\u0006\u0010!\u001a\u00020\u001bH\u0002\u00a2\u0006\u0004\u0008q\u0010DJ\u0017\u0010r\u001a\u0002012\u0006\u0010!\u001a\u00020\u001bH\u0002\u00a2\u0006\u0004\u0008r\u0010DJ\u0017\u0010Q\u001a\u00020\u00182\u0006\u0010!\u001a\u00020\u001bH\u0002\u00a2\u0006\u0004\u0008Q\u0010\u001eJ\u0017\u0010\u0019\u001a\u00020\u00182\u0006\u0010!\u001a\u00020\u001bH\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001eJ\u0017\u0010s\u001a\u00020\u00182\u0006\u0010!\u001a\u00020\u001bH\u0002\u00a2\u0006\u0004\u0008s\u0010\u001eJ\u0017\u0010 \u001a\u00020\u00182\u0006\u0010!\u001a\u00020\u001bH\u0002\u00a2\u0006\u0004\u0008 \u0010\u001eJ\u0017\u0010t\u001a\u00020\u00182\u0006\u0010!\u001a\u00020\u001bH\u0002\u00a2\u0006\u0004\u0008t\u0010\u001eJ\u0017\u0010X\u001a\u00020#2\u0006\u0010!\u001a\u00020\u001bH\u0002\u00a2\u0006\u0004\u0008X\u0010,J\u0017\u0010u\u001a\u00020#2\u0006\u0010!\u001a\u00020\u001bH\u0002\u00a2\u0006\u0004\u0008u\u0010,J\u0015\u0010<\u001a\u0008\u0012\u0004\u0012\u00020i02H\u0002\u00a2\u0006\u0004\u0008<\u0010kJ/\u0010)\u001a\u0008\u0012\u0004\u0012\u000203022\u000c\u0010x\u001a\u0008\u0012\u0004\u0012\u00020w0v2\n\u0008\u0002\u0010z\u001a\u0004\u0018\u00010yH\u0002\u00a2\u0006\u0004\u0008)\u0010{R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008)\u0010|R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010}R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008 \u0010~R\u0014\u0010\t\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008Q\u0010\u007fR\u0015\u0010\u000b\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008s\u0010\u0080\u0001R\u0015\u0010\r\u001a\u00020\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008>\u0010\u0081\u0001R\u0015\u0010\u000f\u001a\u00020\u000e8\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u00084\u0010\u0082\u0001R\u0019\u0010\u0011\u001a\u00020\u00108\u0006\u00a2\u0006\u000e\n\u0005\u00087\u0010\u0083\u0001\u001a\u0005\u0008:\u0010\u0084\u0001R\u001e\u0010\u0087\u0001\u001a\u00020#8BX\u0082\u0084\u0002\u00a2\u0006\u000e\n\u0005\u0008O\u0010\u0085\u0001\u001a\u0005\u0008\u0086\u0001\u0010%R%\u0010\u008a\u0001\u001a\u00020#8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0014\n\u0005\u0008B\u0010\u0088\u0001\u001a\u0004\u0008&\u0010%\"\u0005\u0008)\u0010\u0089\u0001R#\u0010\u008b\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u001b028FX\u0086\u0084\u0002\u00a2\u0006\r\n\u0005\u0008<\u0010\u0085\u0001\u001a\u0004\u0008B\u0010kR\u001e\u0010\u008d\u0001\u001a\u00020#8FX\u0086\u0084\u0002\u00a2\u0006\u000e\n\u0005\u0008?\u0010\u0085\u0001\u001a\u0005\u0008\u008c\u0001\u0010%R\u001d\u0010\u008e\u0001\u001a\u00020#8BX\u0082\u0084\u0002\u00a2\u0006\r\n\u0005\u0008M\u0010\u0085\u0001\u001a\u0004\u0008@\u0010%R\u001e\u0010\u0090\u0001\u001a\u00020#8BX\u0082\u0084\u0002\u00a2\u0006\u000e\n\u0005\u0008\u0015\u0010\u0085\u0001\u001a\u0005\u0008\u008f\u0001\u0010%R\u001f\u0010\u0093\u0001\u001a\u00030\u0091\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000e\n\u0005\u0008@\u0010\u0085\u0001\u001a\u0005\u0008U\u0010\u0092\u0001R \u0010\u001c\u001a\t\u0012\u0004\u0012\u00020\u001b0\u0094\u00018\u0006\u00a2\u0006\u000e\n\u0005\u0008C\u0010\u0095\u0001\u001a\u0005\u0008u\u0010\u0096\u0001R \u0010\u0017\u001a\t\u0012\u0004\u0012\u00020\u00140\u0094\u00018\u0006\u00a2\u0006\u000e\n\u0005\u0008r\u0010\u0095\u0001\u001a\u0005\u0008t\u0010\u0096\u0001R!\u0010\u001f\u001a\t\u0012\u0004\u0012\u00020\u00140\u0094\u00018\u0006\u00a2\u0006\u000f\n\u0005\u0008I\u0010\u0095\u0001\u001a\u0006\u0008\u0097\u0001\u0010\u0096\u0001R\"\u0010\u0099\u0001\u001a\t\u0012\u0004\u0012\u00020#0\u0094\u00018\u0006\u00a2\u0006\u000f\n\u0005\u0008K\u0010\u0095\u0001\u001a\u0006\u0008\u0098\u0001\u0010\u0096\u0001R\u001e\u0010\u009b\u0001\u001a\u00020#8FX\u0086\u0084\u0002\u00a2\u0006\u000e\n\u0005\u0008q\u0010\u0085\u0001\u001a\u0005\u0008\u009a\u0001\u0010%R\u0012\u0010\u009c\u0001\u001a\u00020W8F\u00a2\u0006\u0006\u001a\u0004\u0008C\u0010YR\u0012\u0010\u009d\u0001\u001a\u00020W8F\u00a2\u0006\u0006\u001a\u0004\u0008r\u0010YR\u0017\u0010\u00a1\u0001\u001a\u0005\u0018\u00010\u009e\u00018F\u00a2\u0006\u0008\u001a\u0006\u0008\u009f\u0001\u0010\u00a0\u0001R\u0018\u0010\u00a3\u0001\u001a\u0004\u0018\u00010;8@X\u0080\u0004\u00a2\u0006\u0007\u001a\u0005\u0008J\u0010\u00a2\u0001R\u0018\u0010\u00a4\u0001\u001a\u0004\u0018\u00010;8@X\u0080\u0004\u00a2\u0006\u0007\u001a\u0005\u0008.\u0010\u00a2\u0001R\u0015\u0010\u00a5\u0001\u001a\u0002018@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008?\u0010HR\u0015\u0010\u00a6\u0001\u001a\u0002018@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008M\u0010HR\u0015\u0010\u00a7\u0001\u001a\u0002018@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008R\u0010HR\u0015\u0010\u00a8\u0001\u001a\u0002018@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008V\u0010HR\u0015\u0010\u00a9\u0001\u001a\u00020W8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008T\u0010YR\u0015\u0010\u00aa\u0001\u001a\u0002018@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008O\u0010HR\u0015\u0010\u00ab\u0001\u001a\u0002018@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008I\u0010HR\u0015\u0010\u00ac\u0001\u001a\u0002018@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008c\u0010HR\u0015\u0010\u00ad\u0001\u001a\u0002018@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008K\u0010HR\u0015\u0010\u00ae\u0001\u001a\u0002018@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\"\u0010HR\u0016\u0010\u00b0\u0001\u001a\u00020W8@X\u0080\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00af\u0001\u0010YR\u0016\u0010\u00b2\u0001\u001a\u0002018@X\u0080\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00b1\u0001\u0010HR\u0016\u0010\u00b3\u0001\u001a\u0002018@X\u0080\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u0088\u0001\u0010HR\u0015\u0010\u00b4\u0001\u001a\u0002018@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008+\u0010HR\u0015\u0010\u00b5\u0001\u001a\u0002018DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008q\u0010HR\u0016\u0010\u00b7\u0001\u001a\u0002018DX\u0084\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00b6\u0001\u0010HR#\u0010\u00ba\u0001\u001a\u000f\u0012\u0004\u0012\u000201\u0012\u0004\u0012\u0002010\u00b8\u00018BX\u0082\u0004\u00a2\u0006\u0007\u001a\u0005\u00089\u0010\u00b9\u0001R\u001b\u0010\u00bb\u0001\u001a\u0008\u0012\u0004\u0012\u000201028BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008>\u0010kR\u001b\u0010\u00bc\u0001\u001a\u0008\u0012\u0004\u0012\u000201028BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u00084\u0010kR\u0015\u0010\u00bd\u0001\u001a\u0002018BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008s\u0010HR\u001b\u0010\u00be\u0001\u001a\u0008\u0012\u0004\u0012\u000201028BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u00087\u0010kR\u001b\u0010\u00bf\u0001\u001a\u0008\u0012\u0004\u0012\u000201028BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010kR\u001b\u0010\u00c0\u0001\u001a\u0008\u0012\u0004\u0012\u000201028BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008Q\u0010kR\u0015\u0010\u00c1\u0001\u001a\u0002018BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008f\u0010HR\u0015\u0010\u00c2\u0001\u001a\u0002018BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008p\u0010H\u00a8\u0006\u00c3\u0001"
    }
    d2 = {
        "Lio/didomi/sdk/h9;",
        "Landroidx/lifecycle/ViewModel;",
        "Lio/didomi/sdk/apiEvents/b;",
        "apiEventsRepository",
        "Lio/didomi/sdk/H;",
        "configurationRepository",
        "Lio/didomi/sdk/M2;",
        "eventsRepository",
        "Lio/didomi/sdk/v3;",
        "languagesHelper",
        "Lio/didomi/sdk/z8;",
        "themeProvider",
        "Lio/didomi/sdk/G8;",
        "userChoicesInfoProvider",
        "Lio/didomi/sdk/V8;",
        "vendorRepository",
        "Lio/didomi/sdk/C3;",
        "logoProvider",
        "<init>",
        "(Lio/didomi/sdk/apiEvents/b;Lio/didomi/sdk/H;Lio/didomi/sdk/M2;Lio/didomi/sdk/v3;Lio/didomi/sdk/z8;Lio/didomi/sdk/G8;Lio/didomi/sdk/V8;Lio/didomi/sdk/C3;)V",
        "Lio/didomi/sdk/view/mobile/DidomiToggle$b;",
        "n",
        "()Lio/didomi/sdk/view/mobile/DidomiToggle$b;",
        "selectedVendorConsentState",
        "",
        "b",
        "(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V",
        "Lio/didomi/sdk/models/InternalVendor;",
        "selectedVendor",
        "B",
        "(Lio/didomi/sdk/models/InternalVendor;)V",
        "selectedVendorLegIntState",
        "c",
        "vendor",
        "D",
        "",
        "a0",
        "()Z",
        "C",
        "Lio/didomi/sdk/events/Event;",
        "event",
        "a",
        "(Lio/didomi/sdk/events/Event;)V",
        "z",
        "(Lio/didomi/sdk/models/InternalVendor;)Z",
        "",
        "w",
        "(Lio/didomi/sdk/models/InternalVendor;)Ljava/lang/CharSequence;",
        "Lkotlin/Pair;",
        "",
        "",
        "Lio/didomi/sdk/r0;",
        "g",
        "(Lio/didomi/sdk/models/InternalVendor;)Lkotlin/Pair;",
        "Lio/didomi/sdk/models/InternalPurpose;",
        "h",
        "(Lio/didomi/sdk/models/InternalVendor;)Ljava/util/List;",
        "F",
        "E",
        "Landroid/text/Spanned;",
        "k",
        "(Lio/didomi/sdk/models/InternalVendor;)Landroid/text/Spanned;",
        "f",
        "l",
        "o",
        "Lio/didomi/sdk/m0;",
        "j",
        "p",
        "(Lio/didomi/sdk/models/InternalVendor;)Ljava/lang/String;",
        "Landroid/text/SpannableString;",
        "S",
        "()Landroid/text/SpannableString;",
        "()Ljava/lang/String;",
        "r",
        "x",
        "s",
        "(Lio/didomi/sdk/models/InternalVendor;)Landroid/text/SpannableString;",
        "m",
        "T",
        "i",
        "status",
        "d",
        "y",
        "(Lio/didomi/sdk/models/InternalVendor;)Lio/didomi/sdk/view/mobile/DidomiToggle$b;",
        "H",
        "G",
        "I",
        "Lio/didomi/sdk/a;",
        "K",
        "()Lio/didomi/sdk/a;",
        "N",
        "state",
        "c0",
        "()V",
        "d0",
        "(Lio/didomi/sdk/models/InternalVendor;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V",
        "consentStatus",
        "legIntState",
        "Lio/didomi/sdk/U8$c$b;",
        "v",
        "(Lio/didomi/sdk/models/InternalVendor;)Lio/didomi/sdk/U8$c$b;",
        "Lio/didomi/sdk/U8$c;",
        "u",
        "(Lio/didomi/sdk/models/InternalVendor;)Lio/didomi/sdk/U8$c;",
        "",
        "Lio/didomi/sdk/U8;",
        "X",
        "()Ljava/util/List;",
        "id",
        "(Ljava/lang/String;)Z",
        "purposeId",
        "(Ljava/lang/String;)Lio/didomi/sdk/models/InternalPurpose;",
        "A",
        "t",
        "q",
        "e",
        "L",
        "J",
        "",
        "Lio/didomi/sdk/o0;",
        "dataProcessingList",
        "Lio/didomi/sdk/models/InternalVendor$a;",
        "dataRetention",
        "(Ljava/util/Collection;Lio/didomi/sdk/models/InternalVendor$a;)Ljava/util/List;",
        "Lio/didomi/sdk/apiEvents/b;",
        "Lio/didomi/sdk/H;",
        "Lio/didomi/sdk/M2;",
        "Lio/didomi/sdk/v3;",
        "Lio/didomi/sdk/z8;",
        "Lio/didomi/sdk/G8;",
        "Lio/didomi/sdk/V8;",
        "Lio/didomi/sdk/C3;",
        "()Lio/didomi/sdk/C3;",
        "Lkotlin/Lazy;",
        "b0",
        "isTCFEnabled",
        "Z",
        "(Z)V",
        "ignoreVendorDataChanges",
        "allRequiredVendors",
        "P",
        "shouldHandleAllVendorsState",
        "canShowDetails",
        "R",
        "shouldVendorsBeEnabledByDefault",
        "Lio/didomi/sdk/k$g$a;",
        "()Lio/didomi/sdk/k$g$a;",
        "preferencesContent",
        "Landroidx/lifecycle/MutableLiveData;",
        "Landroidx/lifecycle/MutableLiveData;",
        "()Landroidx/lifecycle/MutableLiveData;",
        "O",
        "M",
        "selectedVendorDeviceStorageDisclosuresLoaded",
        "Q",
        "shouldHideDidomiLogo",
        "closeButtonAccessibility",
        "closeDetailsButtonAccessibility",
        "Lio/didomi/sdk/U8$a;",
        "W",
        "()Lio/didomi/sdk/U8$a;",
        "vendorItemBulk",
        "()Landroid/text/Spanned;",
        "headerDescription",
        "footerLabel",
        "allVendorsText",
        "appTitle",
        "headerTitle",
        "saveButtonLabel",
        "saveButtonAccessibility",
        "additionalDataProcessingTitle",
        "consentDataProcessingTitle",
        "essentialPurposesTitle",
        "cookieSectionTitle",
        "legitimateInterestDataProcessingTitle",
        "U",
        "userInfoButtonAccessibility",
        "V",
        "userInfoButtonLabel",
        "vendorPolicyAccessibilityAction",
        "iabPolicyAccessibilityAction",
        "dataCategoriesTitle",
        "Y",
        "vendorLegIntClaim",
        "",
        "()Ljava/util/Map;",
        "nameMacroForSelectedVendor",
        "accessibilityStateBulkActionDescription",
        "accessibilityStateToggleVendorActionDescription",
        "accessibilityOpenVendorActionDescription",
        "accessibilitySwitchStateDescription",
        "accessibilityConsentStateActionDescription",
        "accessibilityLIStateActionDescription",
        "deviceStorageLink",
        "iabPolicyLink",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private final a:Lio/didomi/sdk/apiEvents/b;

.field private final b:Lio/didomi/sdk/H;

.field private final c:Lio/didomi/sdk/M2;

.field private final d:Lio/didomi/sdk/v3;

.field private final e:Lio/didomi/sdk/z8;

.field private final f:Lio/didomi/sdk/G8;

.field private final g:Lio/didomi/sdk/V8;

.field private final h:Lio/didomi/sdk/C3;

.field private final i:Lkotlin/i;

.field private j:Z

.field private final k:Lkotlin/i;

.field private final l:Lkotlin/i;

.field private final m:Lkotlin/i;

.field private final n:Lkotlin/i;

.field private final o:Lkotlin/i;

.field private final p:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lio/didomi/sdk/models/InternalVendor;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lio/didomi/sdk/view/mobile/DidomiToggle$b;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lio/didomi/sdk/view/mobile/DidomiToggle$b;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final t:Lkotlin/i;


# direct methods
.method public constructor <init>(Lio/didomi/sdk/apiEvents/b;Lio/didomi/sdk/H;Lio/didomi/sdk/M2;Lio/didomi/sdk/v3;Lio/didomi/sdk/z8;Lio/didomi/sdk/G8;Lio/didomi/sdk/V8;Lio/didomi/sdk/C3;)V
    .registers 10

    const-string v0, "apiEventsRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configurationRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventsRepository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "languagesHelper"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "themeProvider"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userChoicesInfoProvider"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vendorRepository"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logoProvider"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/h9;->a:Lio/didomi/sdk/apiEvents/b;

    iput-object p2, p0, Lio/didomi/sdk/h9;->b:Lio/didomi/sdk/H;

    iput-object p3, p0, Lio/didomi/sdk/h9;->c:Lio/didomi/sdk/M2;

    iput-object p4, p0, Lio/didomi/sdk/h9;->d:Lio/didomi/sdk/v3;

    iput-object p5, p0, Lio/didomi/sdk/h9;->e:Lio/didomi/sdk/z8;

    iput-object p6, p0, Lio/didomi/sdk/h9;->f:Lio/didomi/sdk/G8;

    iput-object p7, p0, Lio/didomi/sdk/h9;->g:Lio/didomi/sdk/V8;

    iput-object p8, p0, Lio/didomi/sdk/h9;->h:Lio/didomi/sdk/C3;

    new-instance p1, Lio/didomi/sdk/h9$e;

    invoke-direct {p1, p0}, Lio/didomi/sdk/h9$e;-><init>(Lio/didomi/sdk/h9;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/h9;->i:Lkotlin/i;

    new-instance p1, Lio/didomi/sdk/h9$b;

    invoke-direct {p1, p0}, Lio/didomi/sdk/h9$b;-><init>(Lio/didomi/sdk/h9;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/h9;->k:Lkotlin/i;

    new-instance p1, Lio/didomi/sdk/h9$g;

    invoke-direct {p1, p0}, Lio/didomi/sdk/h9$g;-><init>(Lio/didomi/sdk/h9;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/h9;->l:Lkotlin/i;

    new-instance p1, Lio/didomi/sdk/h9$c;

    invoke-direct {p1, p0}, Lio/didomi/sdk/h9$c;-><init>(Lio/didomi/sdk/h9;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/h9;->m:Lkotlin/i;

    new-instance p1, Lio/didomi/sdk/h9$i;

    invoke-direct {p1, p0}, Lio/didomi/sdk/h9$i;-><init>(Lio/didomi/sdk/h9;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/h9;->n:Lkotlin/i;

    new-instance p1, Lio/didomi/sdk/h9$f;

    invoke-direct {p1, p0}, Lio/didomi/sdk/h9$f;-><init>(Lio/didomi/sdk/h9;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/h9;->o:Lkotlin/i;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/h9;->p:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/h9;->q:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/h9;->r:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/h9;->s:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Lio/didomi/sdk/h9$h;

    invoke-direct {p1, p0}, Lio/didomi/sdk/h9$h;-><init>(Lio/didomi/sdk/h9;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/h9;->t:Lkotlin/i;

    return-void
.end method

.method private final A()Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Lio/didomi/sdk/h9;->d:Lio/didomi/sdk/v3;

    const-string v1, "vendor_iab_transparency_button_title"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final A(Lio/didomi/sdk/models/InternalVendor;)Z
    .registers 3

    invoke-direct {p0}, Lio/didomi/sdk/h9;->b0()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Lio/didomi/sdk/models/InternalVendor;->isIabVendor()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Lio/didomi/sdk/models/InternalVendor;->getHasLegIntClaim()Z

    move-result p1

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return p1
.end method

.method private final F()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/h9;->p:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/models/InternalVendor;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lio/didomi/sdk/models/InternalVendor;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    if-nez v0, :cond_14

    const-string v0, ""

    :cond_14
    const-string v1, "{targetName}"

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/d0;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private final G()Lio/didomi/sdk/k$g$a;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/h9;->o:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/k$g$a;

    return-object v0
.end method

.method private final J(Lio/didomi/sdk/models/InternalVendor;)Z
    .registers 7

    invoke-virtual {p0, p1}, Lio/didomi/sdk/h9;->G(Lio/didomi/sdk/models/InternalVendor;)Z

    move-result v0

    invoke-virtual {p0, p1}, Lio/didomi/sdk/h9;->H(Lio/didomi/sdk/models/InternalVendor;)Z

    move-result v1

    iget-object v2, p0, Lio/didomi/sdk/h9;->f:Lio/didomi/sdk/G8;

    invoke-virtual {v2}, Lio/didomi/sdk/G8;->c()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, p0, Lio/didomi/sdk/h9;->f:Lio/didomi/sdk/G8;

    invoke-virtual {v3}, Lio/didomi/sdk/G8;->e()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_25

    if-nez v0, :cond_23

    goto :goto_25

    :cond_23
    const/4 v0, 0x0

    goto :goto_26

    :cond_25
    :goto_25
    const/4 v0, 0x1

    :goto_26
    if-nez p1, :cond_2d

    if-nez v1, :cond_2b

    goto :goto_2d

    :cond_2b
    const/4 p1, 0x0

    goto :goto_2e

    :cond_2d
    :goto_2d
    const/4 p1, 0x1

    :goto_2e
    if-eqz v0, :cond_33

    if-eqz p1, :cond_33

    const/4 v3, 0x1

    :cond_33
    return v3
.end method

.method private final K(Lio/didomi/sdk/models/InternalVendor;)Z
    .registers 7

    invoke-virtual {p0, p1}, Lio/didomi/sdk/h9;->G(Lio/didomi/sdk/models/InternalVendor;)Z

    move-result v0

    invoke-virtual {p0, p1}, Lio/didomi/sdk/h9;->H(Lio/didomi/sdk/models/InternalVendor;)Z

    move-result v1

    iget-object v2, p0, Lio/didomi/sdk/h9;->f:Lio/didomi/sdk/G8;

    invoke-virtual {v2}, Lio/didomi/sdk/G8;->g()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, p0, Lio/didomi/sdk/h9;->f:Lio/didomi/sdk/G8;

    invoke-virtual {v3}, Lio/didomi/sdk/G8;->e()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_25

    if-nez v1, :cond_23

    goto :goto_25

    :cond_23
    const/4 p1, 0x0

    goto :goto_26

    :cond_25
    :goto_25
    const/4 p1, 0x1

    :goto_26
    if-nez v2, :cond_2a

    if-nez v0, :cond_2e

    :cond_2a
    if-eqz p1, :cond_2e

    const/4 v0, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v0, 0x0

    :goto_2f
    invoke-direct {p0}, Lio/didomi/sdk/h9;->R()Z

    move-result v1

    if-eqz v1, :cond_39

    if-eqz p1, :cond_39

    const/4 p1, 0x1

    goto :goto_3a

    :cond_39
    const/4 p1, 0x0

    :goto_3a
    if-nez v0, :cond_3e

    if-eqz p1, :cond_3f

    :cond_3e
    const/4 v3, 0x1

    :cond_3f
    return v3
.end method

.method private final L(Lio/didomi/sdk/models/InternalVendor;)V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/h9;->f:Lio/didomi/sdk/G8;

    invoke-virtual {v0, p1}, Lio/didomi/sdk/G8;->e(Lio/didomi/sdk/models/InternalVendor;)V

    return-void
.end method

.method private final R()Z
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/h9;->n:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static final synthetic a(Lio/didomi/sdk/h9;)Lio/didomi/sdk/H;
    .registers 1

    iget-object p0, p0, Lio/didomi/sdk/h9;->b:Lio/didomi/sdk/H;

    return-object p0
.end method

.method private final a(Ljava/util/Collection;Lio/didomi/sdk/models/InternalVendor$a;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lio/didomi/sdk/o0;",
            ">;",
            "Lio/didomi/sdk/models/InternalVendor$a;",
            ")",
            "Ljava/util/List<",
            "Lio/didomi/sdk/r0;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/didomi/sdk/h9$d;

    invoke-direct {v0}, Lio/didomi/sdk/h9$d;-><init>()V

    invoke-static {p1, v0}, Lkotlin/collections/p;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/p;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_af

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/didomi/sdk/o0;

    const/4 v2, 0x0

    if-nez p2, :cond_3b

    new-instance v3, Lio/didomi/sdk/r0;

    invoke-interface {v1}, Lio/didomi/sdk/o0;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/text/g;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    invoke-direct {v3, v1, v2, v4, v2}, Lio/didomi/sdk/r0;-><init>(Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/n;)V

    goto/16 :goto_aa

    :cond_3b
    new-instance v3, Lio/didomi/sdk/r0;

    invoke-interface {v1}, Lio/didomi/sdk/o0;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/text/g;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    instance-of v5, v1, Lio/didomi/sdk/models/InternalPurpose;

    if-eqz v5, :cond_7a

    invoke-virtual {p2}, Lio/didomi/sdk/models/InternalVendor$a;->a()Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_62

    invoke-interface {v1}, Lio/didomi/sdk/o0;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-nez v5, :cond_60

    goto :goto_62

    :cond_60
    move-object v2, v5

    goto :goto_a7

    :cond_62
    :goto_62
    invoke-virtual {p2}, Lio/didomi/sdk/models/InternalVendor$a;->a()Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_73

    invoke-interface {v1}, Lio/didomi/sdk/o0;->getIabId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    move-object v2, v1

    :cond_73
    if-nez v2, :cond_a7

    invoke-virtual {p2}, Lio/didomi/sdk/models/InternalVendor$a;->c()Ljava/lang/Integer;

    move-result-object v2

    goto :goto_a7

    :cond_7a
    instance-of v5, v1, Lio/didomi/sdk/models/SpecialPurpose;

    if-eqz v5, :cond_a7

    invoke-virtual {p2}, Lio/didomi/sdk/models/InternalVendor$a;->b()Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_90

    invoke-interface {v1}, Lio/didomi/sdk/o0;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-nez v5, :cond_60

    :cond_90
    invoke-virtual {p2}, Lio/didomi/sdk/models/InternalVendor$a;->b()Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_a1

    invoke-interface {v1}, Lio/didomi/sdk/o0;->getIabId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    move-object v2, v1

    :cond_a1
    if-nez v2, :cond_a7

    invoke-virtual {p2}, Lio/didomi/sdk/models/InternalVendor$a;->c()Ljava/lang/Integer;

    move-result-object v2

    :cond_a7
    :goto_a7
    invoke-direct {v3, v4, v2}, Lio/didomi/sdk/r0;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_aa
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_18

    :cond_af
    return-object v0
.end method

.method public static final synthetic a(Lio/didomi/sdk/h9;Lio/didomi/sdk/models/InternalVendor;)Z
    .registers 2

    invoke-direct {p0, p1}, Lio/didomi/sdk/h9;->a(Lio/didomi/sdk/models/InternalVendor;)Z

    move-result p0

    return p0
.end method

.method private final a(Lio/didomi/sdk/models/InternalVendor;)Z
    .registers 3

    invoke-virtual {p1}, Lio/didomi/sdk/models/InternalVendor;->getPurposeIds()Ljava/util/List;

    move-result-object p1

    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_f

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_27

    :cond_f
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lio/didomi/sdk/h9;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const/4 p1, 0x0

    goto :goto_28

    :cond_27
    :goto_27
    const/4 p1, 0x1

    :goto_28
    return p1
.end method

.method private final a(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/h9;->g:Lio/didomi/sdk/V8;

    invoke-virtual {v0, p1}, Lio/didomi/sdk/V8;->c(Ljava/lang/String;)Lio/didomi/sdk/models/InternalPurpose;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_10

    invoke-static {p1}, Lio/didomi/sdk/p3;->a(Lio/didomi/sdk/models/InternalPurpose;)Z

    move-result p1

    if-ne p1, v0, :cond_10

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public static final synthetic b(Lio/didomi/sdk/h9;)Lio/didomi/sdk/V8;
    .registers 1

    iget-object p0, p0, Lio/didomi/sdk/h9;->g:Lio/didomi/sdk/V8;

    return-object p0
.end method

.method private final b(Ljava/lang/String;)Lio/didomi/sdk/models/InternalPurpose;
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/h9;->g:Lio/didomi/sdk/V8;

    invoke-virtual {v0, p1}, Lio/didomi/sdk/V8;->c(Ljava/lang/String;)Lio/didomi/sdk/models/InternalPurpose;

    move-result-object p1

    return-object p1
.end method

.method private static final b(Lio/didomi/sdk/h9;Lio/didomi/sdk/models/InternalVendor;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$vendor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/h9;->b:Lio/didomi/sdk/H;

    invoke-virtual {v0, p1}, Lio/didomi/sdk/H;->a(Lio/didomi/sdk/models/InternalVendor;)V

    iget-object p0, p0, Lio/didomi/sdk/h9;->s:Landroidx/lifecycle/MutableLiveData;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final b(Lio/didomi/sdk/models/InternalVendor;)V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/h9;->f:Lio/didomi/sdk/G8;

    invoke-virtual {v0, p1}, Lio/didomi/sdk/G8;->a(Lio/didomi/sdk/models/InternalVendor;)V

    return-void
.end method

.method private final b0()Z
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/h9;->i:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private final c()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/h9;->d:Lio/didomi/sdk/v3;

    invoke-direct {p0}, Lio/didomi/sdk/h9;->F()Ljava/util/Map;

    move-result-object v3

    const-string v1, "reset_consent_action"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xa

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/didomi/sdk/h9;->d:Lio/didomi/sdk/v3;

    invoke-direct {p0}, Lio/didomi/sdk/h9;->F()Ljava/util/Map;

    move-result-object v4

    const-string v2, "disable_consent_action"

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xa

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/didomi/sdk/h9;->d:Lio/didomi/sdk/v3;

    invoke-direct {p0}, Lio/didomi/sdk/h9;->F()Ljava/util/Map;

    move-result-object v5

    const-string v3, "enable_consent_action"

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xa

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    invoke-static {v3}, Lkotlin/collections/p;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final c(Lio/didomi/sdk/models/InternalVendor;)V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/h9;->f:Lio/didomi/sdk/G8;

    invoke-virtual {v0, p1}, Lio/didomi/sdk/G8;->b(Lio/didomi/sdk/models/InternalVendor;)V

    return-void
.end method

.method private final d()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/h9;->d:Lio/didomi/sdk/v3;

    invoke-direct {p0}, Lio/didomi/sdk/h9;->F()Ljava/util/Map;

    move-result-object v3

    const-string v1, "enable_li_action"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xa

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/didomi/sdk/h9;->d:Lio/didomi/sdk/v3;

    invoke-direct {p0}, Lio/didomi/sdk/h9;->F()Ljava/util/Map;

    move-result-object v4

    const-string v2, "disable_li_action"

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xa

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/didomi/sdk/h9;->d:Lio/didomi/sdk/v3;

    invoke-direct {p0}, Lio/didomi/sdk/h9;->F()Ljava/util/Map;

    move-result-object v5

    const-string v3, "enable_li_action"

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xa

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    invoke-static {v3}, Lkotlin/collections/p;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final d(Lio/didomi/sdk/models/InternalVendor;)V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/h9;->f:Lio/didomi/sdk/G8;

    invoke-virtual {v0, p1}, Lio/didomi/sdk/G8;->c(Lio/didomi/sdk/models/InternalVendor;)V

    return-void
.end method

.method private final e()Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Lio/didomi/sdk/h9;->d:Lio/didomi/sdk/v3;

    const-string v1, "open_partner_details"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final e(Lio/didomi/sdk/models/InternalVendor;)V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/h9;->f:Lio/didomi/sdk/G8;

    invoke-virtual {v0, p1}, Lio/didomi/sdk/G8;->d(Lio/didomi/sdk/models/InternalVendor;)V

    return-void
.end method

.method private final f()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/h9;->d:Lio/didomi/sdk/v3;

    const-string v1, "reset_all_partners"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/didomi/sdk/h9;->d:Lio/didomi/sdk/v3;

    const-string v2, "disable_all_partners"

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/didomi/sdk/h9;->d:Lio/didomi/sdk/v3;

    const-string v3, "enable_all_partners"

    const/4 v6, 0x0

    const/16 v7, 0xe

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    invoke-static {v3}, Lkotlin/collections/p;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final g()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/h9;->d:Lio/didomi/sdk/v3;

    const-string v1, "reset_this_partner"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/didomi/sdk/h9;->d:Lio/didomi/sdk/v3;

    const-string v2, "disable_this_partner"

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/didomi/sdk/h9;->d:Lio/didomi/sdk/v3;

    const-string v3, "enable_this_partner"

    const/4 v6, 0x0

    const/16 v7, 0xe

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    invoke-static {v3}, Lkotlin/collections/p;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final h()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/h9;->d:Lio/didomi/sdk/v3;

    const-string v1, "disabled"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/didomi/sdk/h9;->d:Lio/didomi/sdk/v3;

    const-string v2, "enabled"

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/didomi/sdk/h9;->d:Lio/didomi/sdk/v3;

    const-string v3, "unspecified"

    const/4 v6, 0x0

    const/16 v7, 0xe

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    invoke-static {v3}, Lkotlin/collections/p;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final k()Ljava/util/List;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/didomi/sdk/U8;",
            ">;"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Lio/didomi/sdk/h9;->g()Ljava/util/List;

    move-result-object v13

    invoke-direct/range {p0 .. p0}, Lio/didomi/sdk/h9;->h()Ljava/util/List;

    move-result-object v14

    invoke-direct/range {p0 .. p0}, Lio/didomi/sdk/h9;->o()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-direct/range {p0 .. p0}, Lio/didomi/sdk/h9;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    move-object v15, v0

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/h9;->j()Ljava/util/List;

    move-result-object v0

    new-instance v12, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lkotlin/collections/p;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v12, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    const/4 v2, 0x0

    :goto_2a
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v17, v2, 0x1

    if-gez v2, :cond_3b

    invoke-static {}, Lkotlin/collections/p;->throwIndexOverflow()V

    :cond_3b
    move-object v1, v0

    check-cast v1, Lio/didomi/sdk/models/InternalVendor;

    invoke-virtual/range {p0 .. p0}, Lio/didomi/sdk/h9;->P()Z

    move-result v6

    invoke-direct/range {p0 .. p0}, Lio/didomi/sdk/h9;->o()Z

    move-result v8

    invoke-direct/range {p0 .. p0}, Lio/didomi/sdk/h9;->R()Z

    move-result v7

    new-instance v11, Lio/didomi/sdk/U8$c;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v18, 0x300

    const/16 v19, 0x0

    move-object v0, v11

    move-object v3, v15

    move-object v4, v13

    move-object v5, v14

    move-object/from16 v20, v11

    move/from16 v11, v18

    move-object/from16 v18, v13

    move-object v13, v12

    move-object/from16 v12, v19

    invoke-direct/range {v0 .. v12}, Lio/didomi/sdk/U8$c;-><init>(Lio/didomi/sdk/models/InternalVendor;ILjava/lang/String;Ljava/util/List;Ljava/util/List;ZZZLio/didomi/sdk/U8$c$b;IILkotlin/jvm/internal/n;)V

    move-object/from16 v0, v20

    invoke-interface {v13, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v12, v13

    move/from16 v2, v17

    move-object/from16 v13, v18

    goto :goto_2a

    :cond_6d
    move-object v13, v12

    return-object v13
.end method

.method public static synthetic m(Lio/didomi/sdk/h9;Lio/didomi/sdk/models/InternalVendor;)V
    .registers 2

    invoke-static {p0, p1}, Lio/didomi/sdk/h9;->b(Lio/didomi/sdk/h9;Lio/didomi/sdk/models/InternalVendor;)V

    return-void
.end method

.method private final o()Z
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/h9;->m:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private final q(Lio/didomi/sdk/models/InternalVendor;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lio/didomi/sdk/h9;->A(Lio/didomi/sdk/models/InternalVendor;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p1, "iab_vendor_disclaimer_li"

    goto :goto_14

    :cond_9
    invoke-virtual {p0, p1}, Lio/didomi/sdk/h9;->z(Lio/didomi/sdk/models/InternalVendor;)Z

    move-result p1

    if-eqz p1, :cond_12

    const-string p1, "iab_vendor_disclaimer"

    goto :goto_14

    :cond_12
    const-string p1, "non_iab_vendor_disclaimer"

    :goto_14
    return-object p1
.end method

.method private final t(Lio/didomi/sdk/models/InternalVendor;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0, p1}, Lio/didomi/sdk/h9;->z(Lio/didomi/sdk/models/InternalVendor;)Z

    move-result v0

    if-eqz v0, :cond_2b

    sget-object v0, Lkotlin/jvm/internal/o0;->a:Lkotlin/jvm/internal/o0;

    invoke-virtual {p1}, Lio/didomi/sdk/models/InternalVendor;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/didomi/sdk/V5;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    const-string v2, "IAB\u00a0TCF"

    aput-object v2, v1, p1

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%s, %s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "format(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_33

    :cond_2b
    invoke-virtual {p1}, Lio/didomi/sdk/models/InternalVendor;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/didomi/sdk/V5;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_33
    return-object p1
.end method

.method private final u()Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Lio/didomi/sdk/h9;->d:Lio/didomi/sdk/v3;

    const-string v1, "device_storage_link"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final B()Ljava/lang/String;
    .registers 2

    const-string v0, "https://iabeurope.eu/iab-europe-transparency-consent-framework-policies/"

    return-object v0
.end method

.method public final B(Lio/didomi/sdk/models/InternalVendor;)V
    .registers 3

    const-string v0, "selectedVendor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/didomi/sdk/h9;->j:Z

    iget-object v0, p0, Lio/didomi/sdk/h9;->f:Lio/didomi/sdk/G8;

    invoke-virtual {v0}, Lio/didomi/sdk/G8;->e()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->c:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    goto :goto_19

    :cond_17
    sget-object v0, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->d:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    :goto_19
    invoke-virtual {p0, v0}, Lio/didomi/sdk/h9;->c(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V

    iget-object v0, p0, Lio/didomi/sdk/h9;->f:Lio/didomi/sdk/G8;

    invoke-virtual {v0}, Lio/didomi/sdk/G8;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    sget-object p1, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->c:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    goto :goto_3c

    :cond_2b
    iget-object v0, p0, Lio/didomi/sdk/h9;->f:Lio/didomi/sdk/G8;

    invoke-virtual {v0}, Lio/didomi/sdk/G8;->g()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3a

    sget-object p1, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->d:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    goto :goto_3c

    :cond_3a
    sget-object p1, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->e:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    :goto_3c
    invoke-virtual {p0, p1}, Lio/didomi/sdk/h9;->b(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lio/didomi/sdk/h9;->j:Z

    return-void
.end method

.method public final C(Lio/didomi/sdk/models/InternalVendor;)V
    .registers 4

    const-string v0, "vendor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lio/didomi/sdk/M0;->a:Lio/didomi/sdk/M0;

    new-instance v1, Lio/didomi/sdk/ie;

    invoke-direct {v1, p0, p1}, Lio/didomi/sdk/ie;-><init>(Lio/didomi/sdk/h9;Lio/didomi/sdk/models/InternalVendor;)V

    invoke-virtual {v0, v1}, Lio/didomi/sdk/M0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final C()Z
    .registers 2

    iget-boolean v0, p0, Lio/didomi/sdk/h9;->j:Z

    return v0
.end method

.method public final D()Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Lio/didomi/sdk/h9;->d:Lio/didomi/sdk/v3;

    const-string v1, "data_processing_based_legitimate_interest"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final D(Lio/didomi/sdk/models/InternalVendor;)V
    .registers 3

    const-string v0, "vendor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/h9;->p:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lio/didomi/sdk/h9;->s:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Lio/didomi/sdk/models/InternalVendor;->isDeviceStorageDisclosureComplete()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final E()Lio/didomi/sdk/C3;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/h9;->h:Lio/didomi/sdk/C3;

    return-object v0
.end method

.method public final E(Lio/didomi/sdk/models/InternalVendor;)Z
    .registers 3

    const-string v0, "vendor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/didomi/sdk/models/InternalVendor;->getDeviceStorageDisclosureUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/didomi/sdk/V5;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {p1}, Lio/didomi/sdk/V5;->d(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_17

    const/4 p1, 0x1

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    :goto_18
    return p1
.end method

.method public final F(Lio/didomi/sdk/models/InternalVendor;)Z
    .registers 3

    const-string v0, "vendor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/didomi/sdk/models/InternalVendor;->getDeviceStorageDisclosures()Lio/didomi/sdk/models/DeviceStorageDisclosures;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Lio/didomi/sdk/models/DeviceStorageDisclosures;->getDisclosuresList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1a

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v0

    if-ne p1, v0, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method public final G(Lio/didomi/sdk/models/InternalVendor;)Z
    .registers 3

    const-string v0, "vendor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/didomi/sdk/models/InternalVendor;->getPurposeIds()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final H()Lio/didomi/sdk/a;
    .registers 11

    new-instance v9, Lio/didomi/sdk/a;

    invoke-virtual {p0}, Lio/didomi/sdk/h9;->I()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/didomi/sdk/h9;->d:Lio/didomi/sdk/v3;

    const-string v3, "save_vendor_preferences_and_back_to_purpose"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xe

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0x3c

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lio/didomi/sdk/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Integer;ILkotlin/jvm/internal/n;)V

    return-object v9
.end method

.method public final H(Lio/didomi/sdk/models/InternalVendor;)Z
    .registers 3

    const-string v0, "vendor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/didomi/sdk/models/InternalVendor;->getLegIntPurposeIds()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final I()Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lio/didomi/sdk/h9;->d:Lio/didomi/sdk/v3;

    invoke-direct {p0}, Lio/didomi/sdk/h9;->G()Lio/didomi/sdk/k$g$a;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/k$g$a;->g()Ljava/util/Map;

    move-result-object v1

    const-string v2, "save_11a80ec3"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/util/Map;Ljava/lang/String;Lio/didomi/sdk/W5;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final I(Lio/didomi/sdk/models/InternalVendor;)Z
    .registers 3

    const-string v0, "vendor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/didomi/sdk/h9;->G(Lio/didomi/sdk/models/InternalVendor;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p0, p1}, Lio/didomi/sdk/h9;->H(Lio/didomi/sdk/models/InternalVendor;)Z

    move-result p1

    if-eqz p1, :cond_12

    goto :goto_14

    :cond_12
    const/4 p1, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 p1, 0x1

    :goto_15
    return p1
.end method

.method public final J()Landroidx/lifecycle/MutableLiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lio/didomi/sdk/models/InternalVendor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/h9;->p:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final K()Lio/didomi/sdk/a;
    .registers 12

    iget-object v0, p0, Lio/didomi/sdk/h9;->q:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    if-nez v0, :cond_c

    sget-object v0, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->e:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    :cond_c
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    new-instance v10, Lio/didomi/sdk/a;

    invoke-virtual {p0}, Lio/didomi/sdk/h9;->r()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lio/didomi/sdk/h9;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0}, Lio/didomi/sdk/h9;->h()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x38

    const/4 v9, 0x0

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lio/didomi/sdk/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Integer;ILkotlin/jvm/internal/n;)V

    return-object v10
.end method

.method public final L()Landroidx/lifecycle/MutableLiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lio/didomi/sdk/view/mobile/DidomiToggle$b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/h9;->q:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final M()Landroidx/lifecycle/MutableLiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/h9;->s:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final N()Lio/didomi/sdk/a;
    .registers 13

    iget-object v0, p0, Lio/didomi/sdk/h9;->r:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    if-nez v0, :cond_c

    sget-object v0, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->d:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    :cond_c
    const-string v1, "selectedVendorLegIntStat\u2026idomiToggle.State.ENABLED"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->d:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    if-ne v0, v1, :cond_17

    move-object v1, v0

    goto :goto_19

    :cond_17
    sget-object v1, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->e:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    :goto_19
    new-instance v11, Lio/didomi/sdk/a;

    invoke-virtual {p0}, Lio/didomi/sdk/h9;->D()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lio/didomi/sdk/h9;->d()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0}, Lio/didomi/sdk/h9;->h()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x38

    const/4 v10, 0x0

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lio/didomi/sdk/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Integer;ILkotlin/jvm/internal/n;)V

    return-object v11
.end method

.method public final O()Landroidx/lifecycle/MutableLiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lio/didomi/sdk/view/mobile/DidomiToggle$b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/h9;->r:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final P()Z
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/h9;->l:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final Q()Z
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/h9;->t:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final S()Landroid/text/SpannableString;
    .registers 6

    new-instance v0, Landroid/text/SpannableString;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lio/didomi/sdk/h9;->A()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[didomi_link_external]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/UnderlineSpan;

    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method public final T()Landroid/text/SpannableString;
    .registers 6

    new-instance v0, Landroid/text/SpannableString;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/didomi/sdk/h9;->Y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[didomi_link_external]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/UnderlineSpan;

    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method public final U()Lio/didomi/sdk/a;
    .registers 11

    new-instance v9, Lio/didomi/sdk/a;

    invoke-virtual {p0}, Lio/didomi/sdk/h9;->V()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/didomi/sdk/h9;->d:Lio/didomi/sdk/v3;

    const-string v3, "access_user_information"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xe

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0x3c

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lio/didomi/sdk/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Integer;ILkotlin/jvm/internal/n;)V

    return-object v9
.end method

.method public final V()Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Lio/didomi/sdk/h9;->d:Lio/didomi/sdk/v3;

    const-string v1, "user_information_title"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final W()Lio/didomi/sdk/U8$a;
    .registers 15

    invoke-virtual {p0}, Lio/didomi/sdk/h9;->P()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3f

    invoke-virtual {p0}, Lio/didomi/sdk/h9;->l()Ljava/lang/String;

    move-result-object v3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    const/4 v4, 0x1

    if-lt v0, v2, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    new-instance v13, Lio/didomi/sdk/U8$a;

    if-eqz v0, :cond_1b

    move-object v5, v3

    goto :goto_1c

    :cond_1b
    move-object v5, v1

    :goto_1c
    invoke-direct {p0}, Lio/didomi/sdk/h9;->f()Ljava/util/List;

    move-result-object v6

    invoke-direct {p0}, Lio/didomi/sdk/h9;->h()Ljava/util/List;

    move-result-object v7

    if-eqz v0, :cond_27

    goto :goto_28

    :cond_27
    move-object v1, v3

    :goto_28
    invoke-direct {p0}, Lio/didomi/sdk/h9;->R()Z

    move-result v0

    xor-int/lit8 v8, v0, 0x1

    invoke-virtual {p0}, Lio/didomi/sdk/h9;->n()Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    move-result-object v9

    const/4 v10, 0x0

    const/16 v11, 0x80

    const/4 v12, 0x0

    move-object v2, v13

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v1

    invoke-direct/range {v2 .. v12}, Lio/didomi/sdk/U8$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZLio/didomi/sdk/view/mobile/DidomiToggle$b;IILkotlin/jvm/internal/n;)V

    move-object v1, v13

    :cond_3f
    return-object v1
.end method

.method public final X()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/didomi/sdk/U8;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Lio/didomi/sdk/U8$b;

    invoke-virtual {p0}, Lio/didomi/sdk/h9;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lio/didomi/sdk/h9;->x()Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {p0}, Lio/didomi/sdk/h9;->U()Lio/didomi/sdk/a;

    move-result-object v4

    invoke-virtual {p0}, Lio/didomi/sdk/h9;->V()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lio/didomi/sdk/U8$b;-><init>(Ljava/lang/String;Landroid/text/Spanned;Lio/didomi/sdk/a;Ljava/lang/String;IILkotlin/jvm/internal/n;)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lio/didomi/sdk/h9;->P()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-virtual {p0}, Lio/didomi/sdk/h9;->W()Lio/didomi/sdk/U8$a;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type io.didomi.sdk.vendors.mobile.model.VendorItem.Bulk"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_34
    invoke-direct {p0}, Lio/didomi/sdk/h9;->k()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method protected final Y()Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Lio/didomi/sdk/h9;->d:Lio/didomi/sdk/v3;

    const-string v1, "legitimate_interest"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final Z()Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Lio/didomi/sdk/h9;->d:Lio/didomi/sdk/v3;

    const-string v1, "link_privacy_policy"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lio/didomi/sdk/events/Event;)V
    .registers 3

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/h9;->c:Lio/didomi/sdk/M2;

    invoke-virtual {v0, p1}, Lio/didomi/sdk/M2;->c(Lio/didomi/sdk/events/Event;)V

    return-void
.end method

.method public final a(Lio/didomi/sdk/models/InternalVendor;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V
    .registers 4

    const-string v0, "vendor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consentStatus"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lio/didomi/sdk/h9$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_30

    const/4 v0, 0x2

    if-eq p2, v0, :cond_20

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1c

    goto :goto_3f

    :cond_1c
    invoke-direct {p0, p1}, Lio/didomi/sdk/h9;->L(Lio/didomi/sdk/models/InternalVendor;)V

    goto :goto_3f

    :cond_20
    invoke-direct {p0, p1}, Lio/didomi/sdk/h9;->d(Lio/didomi/sdk/models/InternalVendor;)V

    new-instance p2, Lio/didomi/sdk/events/PreferencesClickVendorAgreeEvent;

    invoke-virtual {p1}, Lio/didomi/sdk/models/InternalVendor;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lio/didomi/sdk/events/PreferencesClickVendorAgreeEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lio/didomi/sdk/h9;->a(Lio/didomi/sdk/events/Event;)V

    goto :goto_3f

    :cond_30
    invoke-direct {p0, p1}, Lio/didomi/sdk/h9;->b(Lio/didomi/sdk/models/InternalVendor;)V

    new-instance p2, Lio/didomi/sdk/events/PreferencesClickVendorDisagreeEvent;

    invoke-virtual {p1}, Lio/didomi/sdk/models/InternalVendor;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lio/didomi/sdk/events/PreferencesClickVendorDisagreeEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lio/didomi/sdk/h9;->a(Lio/didomi/sdk/events/Event;)V

    :goto_3f
    return-void
.end method

.method public final a(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V
    .registers 3

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lio/didomi/sdk/h9$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1d

    const/4 v0, 0x2

    if-eq p1, v0, :cond_14

    goto :goto_25

    :cond_14
    new-instance p1, Lio/didomi/sdk/events/PreferencesClickAgreeToAllVendorsEvent;

    invoke-direct {p1}, Lio/didomi/sdk/events/PreferencesClickAgreeToAllVendorsEvent;-><init>()V

    invoke-virtual {p0, p1}, Lio/didomi/sdk/h9;->a(Lio/didomi/sdk/events/Event;)V

    goto :goto_25

    :cond_1d
    new-instance p1, Lio/didomi/sdk/events/PreferencesClickDisagreeToAllVendorsEvent;

    invoke-direct {p1}, Lio/didomi/sdk/events/PreferencesClickDisagreeToAllVendorsEvent;-><init>()V

    invoke-virtual {p0, p1}, Lio/didomi/sdk/h9;->a(Lio/didomi/sdk/events/Event;)V

    :goto_25
    invoke-virtual {p0}, Lio/didomi/sdk/h9;->c0()V

    return-void
.end method

.method public final a(Z)V
    .registers 2

    iput-boolean p1, p0, Lio/didomi/sdk/h9;->j:Z

    return-void
.end method

.method public final a()Z
    .registers 3

    invoke-virtual {p0}, Lio/didomi/sdk/h9;->j()Ljava/util/List;

    move-result-object v0

    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_27

    :cond_f
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/didomi/sdk/models/InternalVendor;

    invoke-direct {p0, v1}, Lio/didomi/sdk/h9;->J(Lio/didomi/sdk/models/InternalVendor;)Z

    move-result v1

    if-nez v1, :cond_13

    const/4 v0, 0x0

    goto :goto_28

    :cond_27
    :goto_27
    const/4 v0, 0x1

    :goto_28
    return v0
.end method

.method public final a0()Z
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/h9;->s:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final b(Lio/didomi/sdk/models/InternalVendor;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V
    .registers 4

    const-string v0, "vendor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "legIntState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lio/didomi/sdk/h9$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_29

    const/4 v0, 0x2

    if-eq p2, v0, :cond_19

    goto :goto_38

    :cond_19
    invoke-direct {p0, p1}, Lio/didomi/sdk/h9;->e(Lio/didomi/sdk/models/InternalVendor;)V

    new-instance p2, Lio/didomi/sdk/events/PreferencesClickVendorAgreeEvent;

    invoke-virtual {p1}, Lio/didomi/sdk/models/InternalVendor;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lio/didomi/sdk/events/PreferencesClickVendorAgreeEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lio/didomi/sdk/h9;->a(Lio/didomi/sdk/events/Event;)V

    goto :goto_38

    :cond_29
    invoke-direct {p0, p1}, Lio/didomi/sdk/h9;->c(Lio/didomi/sdk/models/InternalVendor;)V

    new-instance p2, Lio/didomi/sdk/events/PreferencesClickVendorDisagreeEvent;

    invoke-virtual {p1}, Lio/didomi/sdk/models/InternalVendor;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lio/didomi/sdk/events/PreferencesClickVendorDisagreeEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lio/didomi/sdk/h9;->a(Lio/didomi/sdk/events/Event;)V

    :goto_38
    return-void
.end method

.method public final b(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V
    .registers 3

    const-string v0, "selectedVendorConsentState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/h9;->q:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final b()Z
    .registers 3

    invoke-virtual {p0}, Lio/didomi/sdk/h9;->j()Ljava/util/List;

    move-result-object v0

    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_27

    :cond_f
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/didomi/sdk/models/InternalVendor;

    invoke-direct {p0, v1}, Lio/didomi/sdk/h9;->K(Lio/didomi/sdk/models/InternalVendor;)Z

    move-result v1

    if-nez v1, :cond_13

    const/4 v0, 0x0

    goto :goto_28

    :cond_27
    :goto_27
    const/4 v0, 0x1

    :goto_28
    return v0
.end method

.method public final c(Lio/didomi/sdk/models/InternalVendor;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V
    .registers 4

    const-string v0, "vendor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lio/didomi/sdk/h9$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_5c

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3d

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1c

    goto :goto_7a

    :cond_1c
    invoke-virtual {p0, p1}, Lio/didomi/sdk/h9;->G(Lio/didomi/sdk/models/InternalVendor;)Z

    move-result p2

    if-eqz p2, :cond_25

    invoke-direct {p0, p1}, Lio/didomi/sdk/h9;->L(Lio/didomi/sdk/models/InternalVendor;)V

    :cond_25
    invoke-virtual {p0, p1}, Lio/didomi/sdk/h9;->H(Lio/didomi/sdk/models/InternalVendor;)Z

    move-result v0

    if-eqz v0, :cond_7a

    invoke-direct {p0, p1}, Lio/didomi/sdk/h9;->e(Lio/didomi/sdk/models/InternalVendor;)V

    if-nez p2, :cond_7a

    new-instance p2, Lio/didomi/sdk/events/PreferencesClickVendorAgreeEvent;

    invoke-virtual {p1}, Lio/didomi/sdk/models/InternalVendor;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lio/didomi/sdk/events/PreferencesClickVendorAgreeEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lio/didomi/sdk/h9;->a(Lio/didomi/sdk/events/Event;)V

    goto :goto_7a

    :cond_3d
    invoke-virtual {p0, p1}, Lio/didomi/sdk/h9;->G(Lio/didomi/sdk/models/InternalVendor;)Z

    move-result p2

    if-eqz p2, :cond_46

    invoke-direct {p0, p1}, Lio/didomi/sdk/h9;->d(Lio/didomi/sdk/models/InternalVendor;)V

    :cond_46
    invoke-virtual {p0, p1}, Lio/didomi/sdk/h9;->H(Lio/didomi/sdk/models/InternalVendor;)Z

    move-result p2

    if-eqz p2, :cond_4f

    invoke-direct {p0, p1}, Lio/didomi/sdk/h9;->e(Lio/didomi/sdk/models/InternalVendor;)V

    :cond_4f
    new-instance p2, Lio/didomi/sdk/events/PreferencesClickVendorAgreeEvent;

    invoke-virtual {p1}, Lio/didomi/sdk/models/InternalVendor;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lio/didomi/sdk/events/PreferencesClickVendorAgreeEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lio/didomi/sdk/h9;->a(Lio/didomi/sdk/events/Event;)V

    goto :goto_7a

    :cond_5c
    invoke-virtual {p0, p1}, Lio/didomi/sdk/h9;->G(Lio/didomi/sdk/models/InternalVendor;)Z

    move-result p2

    if-eqz p2, :cond_65

    invoke-direct {p0, p1}, Lio/didomi/sdk/h9;->b(Lio/didomi/sdk/models/InternalVendor;)V

    :cond_65
    invoke-virtual {p0, p1}, Lio/didomi/sdk/h9;->H(Lio/didomi/sdk/models/InternalVendor;)Z

    move-result p2

    if-eqz p2, :cond_6e

    invoke-direct {p0, p1}, Lio/didomi/sdk/h9;->c(Lio/didomi/sdk/models/InternalVendor;)V

    :cond_6e
    new-instance p2, Lio/didomi/sdk/events/PreferencesClickVendorDisagreeEvent;

    invoke-virtual {p1}, Lio/didomi/sdk/models/InternalVendor;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lio/didomi/sdk/events/PreferencesClickVendorDisagreeEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lio/didomi/sdk/h9;->a(Lio/didomi/sdk/events/Event;)V

    :cond_7a
    :goto_7a
    return-void
.end method

.method public final c(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V
    .registers 3

    const-string v0, "selectedVendorLegIntState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/h9;->r:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final c0()V
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/h9;->a:Lio/didomi/sdk/apiEvents/b;

    invoke-virtual {v0}, Lio/didomi/sdk/apiEvents/b;->m()V

    return-void
.end method

.method public final d(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V
    .registers 6

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/h9;->f:Lio/didomi/sdk/G8;

    invoke-virtual {v0}, Lio/didomi/sdk/G8;->g()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    invoke-virtual {v0}, Lio/didomi/sdk/G8;->c()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    invoke-virtual {v0}, Lio/didomi/sdk/G8;->i()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    invoke-virtual {v0}, Lio/didomi/sdk/G8;->e()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    invoke-virtual {p0}, Lio/didomi/sdk/h9;->j()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2b
    :goto_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/didomi/sdk/models/InternalVendor;

    invoke-virtual {p0, v2}, Lio/didomi/sdk/h9;->G(Lio/didomi/sdk/models/InternalVendor;)Z

    move-result v3

    if-eqz v3, :cond_54

    sget-object v3, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->c:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    if-ne p1, v3, :cond_49

    invoke-virtual {v0}, Lio/didomi/sdk/G8;->c()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_54

    :cond_49
    sget-object v3, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->d:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    if-ne p1, v3, :cond_54

    invoke-virtual {v0}, Lio/didomi/sdk/G8;->g()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_54
    :goto_54
    invoke-virtual {p0, v2}, Lio/didomi/sdk/h9;->H(Lio/didomi/sdk/models/InternalVendor;)Z

    move-result v3

    if-eqz v3, :cond_2b

    sget-object v3, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->c:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    if-ne p1, v3, :cond_66

    invoke-virtual {v0}, Lio/didomi/sdk/G8;->e()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    :cond_66
    invoke-virtual {v0}, Lio/didomi/sdk/G8;->i()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    :cond_6e
    return-void
.end method

.method public final d0()V
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/h9;->a:Lio/didomi/sdk/apiEvents/b;

    invoke-virtual {v0}, Lio/didomi/sdk/apiEvents/b;->l()V

    return-void
.end method

.method public final f(Lio/didomi/sdk/models/InternalVendor;)Lkotlin/Pair;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/models/InternalVendor;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lio/didomi/sdk/r0;",
            ">;>;"
        }
    .end annotation

    const-string v0, "vendor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/h9;->g:Lio/didomi/sdk/V8;

    invoke-virtual {v0, p1}, Lio/didomi/sdk/V8;->c(Lio/didomi/sdk/models/InternalVendor;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 p1, 0x0

    goto :goto_25

    :cond_13
    new-instance v1, Lkotlin/Pair;

    invoke-virtual {p0}, Lio/didomi/sdk/h9;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lio/didomi/sdk/models/InternalVendor;->getDataRetention()Lio/didomi/sdk/models/InternalVendor$a;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lio/didomi/sdk/h9;->a(Ljava/util/Collection;Lio/didomi/sdk/models/InternalVendor$a;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p1, v1

    :goto_25
    return-object p1
.end method

.method public final g(Lio/didomi/sdk/models/InternalVendor;)Lkotlin/Pair;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/models/InternalVendor;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lio/didomi/sdk/r0;",
            ">;>;"
        }
    .end annotation

    const-string v0, "vendor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/didomi/sdk/h9;->h(Lio/didomi/sdk/models/InternalVendor;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 p1, 0x0

    goto :goto_23

    :cond_11
    new-instance v1, Lkotlin/Pair;

    invoke-virtual {p0}, Lio/didomi/sdk/h9;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lio/didomi/sdk/models/InternalVendor;->getDataRetention()Lio/didomi/sdk/models/InternalVendor$a;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lio/didomi/sdk/h9;->a(Ljava/util/Collection;Lio/didomi/sdk/models/InternalVendor$a;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p1, v1

    :goto_23
    return-object p1
.end method

.method public final h(Lio/didomi/sdk/models/InternalVendor;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/models/InternalVendor;",
            ")",
            "Ljava/util/List<",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;"
        }
    .end annotation

    const-string v0, "vendor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/didomi/sdk/models/InternalVendor;->getPurposeIds()Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_12
    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lio/didomi/sdk/h9;->b(Ljava/lang/String;)Lio/didomi/sdk/models/InternalPurpose;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_28
    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Lio/didomi/sdk/h9;->d:Lio/didomi/sdk/v3;

    const-string v1, "additional_data_processing"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final i(Lio/didomi/sdk/models/InternalVendor;)Ljava/lang/String;
    .registers 12

    const-string v0, "vendor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/didomi/sdk/models/InternalVendor;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "{vendorName}"

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Lkotlin/Pair;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Lkotlin/collections/d0;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lio/didomi/sdk/models/InternalVendor;->getCookieMaxAgeSeconds()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1}, Lio/didomi/sdk/models/InternalVendor;->getUsesNonCookieAccess()Z

    move-result p1

    if-eqz p1, :cond_30

    iget-object v4, p0, Lio/didomi/sdk/h9;->d:Lio/didomi/sdk/v3;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    const-string v5, "other_means_of_storage"

    invoke-static/range {v4 .. v9}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_31

    :cond_30
    const/4 p1, 0x0

    :goto_31
    if-nez v2, :cond_34

    return-object p1

    :cond_34
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_6b

    sget-object v4, Lio/didomi/sdk/v0;->a:Lio/didomi/sdk/v0;

    iget-object v5, p0, Lio/didomi/sdk/h9;->d:Lio/didomi/sdk/v3;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lio/didomi/sdk/v0;->b(Lio/didomi/sdk/v3;J)Ljava/lang/String;

    move-result-object v2

    const-string v4, "{humanizedStorageDuration}"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lio/didomi/sdk/h9;->d:Lio/didomi/sdk/v3;

    sget-object v5, Lio/didomi/sdk/W5;->a:Lio/didomi/sdk/W5;

    const-string v6, "vendor_storage_duration"

    invoke-virtual {v4, v6, v5, v0}, Lio/didomi/sdk/v3;->b(Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2e

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_75

    :cond_6b
    iget-object v2, p0, Lio/didomi/sdk/h9;->d:Lio/didomi/sdk/v3;

    sget-object v4, Lio/didomi/sdk/W5;->a:Lio/didomi/sdk/W5;

    const-string v5, "browsing_session_storage_duration"

    invoke-virtual {v2, v5, v4, v0}, Lio/didomi/sdk/v3;->b(Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    :goto_75
    if-eqz p1, :cond_8f

    sget-object v2, Lkotlin/jvm/internal/o0;->a:Lkotlin/jvm/internal/o0;

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v0, v4, v3

    aput-object p1, v4, v1

    invoke-static {v4, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%s %s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string p1, "format(...)"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_8f
    return-object v0
.end method

.method public final j()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/didomi/sdk/models/InternalVendor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/h9;->k:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final j(Lio/didomi/sdk/models/InternalVendor;)Lkotlin/Pair;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/models/InternalVendor;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lio/didomi/sdk/m0;",
            ">;>;"
        }
    .end annotation

    const-string v0, "vendor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/h9;->g:Lio/didomi/sdk/V8;

    invoke-virtual {v0, p1}, Lio/didomi/sdk/V8;->a(Lio/didomi/sdk/models/InternalVendor;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 p1, 0x0

    goto :goto_50

    :cond_13
    invoke-virtual {p0}, Lio/didomi/sdk/h9;->t()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/p;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_26
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/didomi/sdk/models/DataCategory;

    new-instance v3, Lio/didomi/sdk/m0;

    invoke-virtual {v2}, Lio/didomi/sdk/models/DataCategory;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lio/didomi/sdk/models/DataCategory;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/text/g;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lio/didomi/sdk/m0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :cond_4b
    new-instance p1, Lkotlin/Pair;

    invoke-direct {p1, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_50
    return-object p1
.end method

.method public final k(Lio/didomi/sdk/models/InternalVendor;)Landroid/text/Spanned;
    .registers 3

    const-string v0, "vendor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lio/didomi/sdk/h9;->u()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lio/didomi/sdk/models/InternalVendor;->getDeviceStorageDisclosureUrl()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_11

    const-string p1, ""

    :cond_11
    invoke-static {v0, p1}, Lio/didomi/sdk/V5;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    return-object p1
.end method

.method public final l()Ljava/lang/String;
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/didomi/sdk/h9;->d:Lio/didomi/sdk/v3;

    const-string v2, "all_partners"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/didomi/sdk/h9;->j()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final l(Lio/didomi/sdk/models/InternalVendor;)Lkotlin/Pair;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/models/InternalVendor;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lio/didomi/sdk/r0;",
            ">;>;"
        }
    .end annotation

    const-string v0, "vendor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/h9;->g:Lio/didomi/sdk/V8;

    invoke-virtual {v0, p1}, Lio/didomi/sdk/V8;->b(Lio/didomi/sdk/models/InternalVendor;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 p1, 0x0

    goto :goto_25

    :cond_13
    new-instance v1, Lkotlin/Pair;

    invoke-virtual {p0}, Lio/didomi/sdk/h9;->v()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lio/didomi/sdk/models/InternalVendor;->getDataRetention()Lio/didomi/sdk/models/InternalVendor$a;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lio/didomi/sdk/h9;->a(Ljava/util/Collection;Lio/didomi/sdk/models/InternalVendor$a;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p1, v1

    :goto_25
    return-object p1
.end method

.method public final m()Ljava/lang/String;
    .registers 4

    sget-object v0, Lio/didomi/sdk/f4;->a:Lio/didomi/sdk/f4;

    iget-object v1, p0, Lio/didomi/sdk/h9;->b:Lio/didomi/sdk/H;

    iget-object v2, p0, Lio/didomi/sdk/h9;->d:Lio/didomi/sdk/v3;

    invoke-virtual {v0, v1, v2}, Lio/didomi/sdk/f4;->a(Lio/didomi/sdk/H;Lio/didomi/sdk/v3;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final m(Lio/didomi/sdk/models/InternalVendor;)Ljava/lang/String;
    .registers 6

    const-string v0, "vendor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/didomi/sdk/h9;->d:Lio/didomi/sdk/v3;

    invoke-virtual {v0}, Lio/didomi/sdk/v3;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/didomi/sdk/h9;->d:Lio/didomi/sdk/v3;

    invoke-virtual {v1}, Lio/didomi/sdk/v3;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "en"

    aput-object v1, v2, v0

    invoke-static {p1, v2}, Lio/didomi/sdk/q3;->a(Lio/didomi/sdk/models/InternalVendor;[Ljava/lang/String;)Lio/didomi/sdk/Vendor$Url;

    move-result-object p1

    if-eqz p1, :cond_2a

    invoke-virtual {p1}, Lio/didomi/sdk/Vendor$Url;->getLegIntClaim()Ljava/lang/String;

    move-result-object p1

    goto :goto_2b

    :cond_2a
    const/4 p1, 0x0

    :goto_2b
    return-object p1
.end method

.method public final n()Lio/didomi/sdk/view/mobile/DidomiToggle$b;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/h9;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->d:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    goto :goto_14

    :cond_9
    invoke-virtual {p0}, Lio/didomi/sdk/h9;->a()Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->c:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    goto :goto_14

    :cond_12
    sget-object v0, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->e:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    :goto_14
    return-object v0
.end method

.method public final n(Lio/didomi/sdk/models/InternalVendor;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/models/InternalVendor;",
            ")",
            "Ljava/util/List<",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;"
        }
    .end annotation

    const-string v0, "vendor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/didomi/sdk/models/InternalVendor;->getLegIntPurposeIds()Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_12
    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lio/didomi/sdk/h9;->b(Ljava/lang/String;)Lio/didomi/sdk/models/InternalPurpose;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_28
    return-object v0
.end method

.method public final o(Lio/didomi/sdk/models/InternalVendor;)Lkotlin/Pair;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/models/InternalVendor;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lio/didomi/sdk/r0;",
            ">;>;"
        }
    .end annotation

    const-string v0, "vendor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/didomi/sdk/h9;->n(Lio/didomi/sdk/models/InternalVendor;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 p1, 0x0

    goto :goto_23

    :cond_11
    new-instance v1, Lkotlin/Pair;

    invoke-virtual {p0}, Lio/didomi/sdk/h9;->D()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lio/didomi/sdk/models/InternalVendor;->getDataRetention()Lio/didomi/sdk/models/InternalVendor$a;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lio/didomi/sdk/h9;->a(Ljava/util/Collection;Lio/didomi/sdk/models/InternalVendor$a;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p1, v1

    :goto_23
    return-object p1
.end method

.method public final p()Lio/didomi/sdk/a;
    .registers 11

    new-instance v9, Lio/didomi/sdk/a;

    iget-object v0, p0, Lio/didomi/sdk/h9;->d:Lio/didomi/sdk/v3;

    const-string v1, "close"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/didomi/sdk/h9;->d:Lio/didomi/sdk/v3;

    const-string v3, "go_back_to_purposes_list"

    const/4 v5, 0x0

    const/16 v7, 0xe

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0x3c

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lio/didomi/sdk/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Integer;ILkotlin/jvm/internal/n;)V

    return-object v9
.end method

.method public final p(Lio/didomi/sdk/models/InternalVendor;)Ljava/lang/String;
    .registers 10

    const-string v0, "vendor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lio/didomi/sdk/h9;->q(Lio/didomi/sdk/models/InternalVendor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lio/didomi/sdk/models/InternalVendor;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "{name}"

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/d0;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v4

    iget-object v1, p0, Lio/didomi/sdk/h9;->d:Lio/didomi/sdk/v3;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xa

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lio/didomi/sdk/v8;->a:Lio/didomi/sdk/v8;

    invoke-virtual {v0, p1}, Lio/didomi/sdk/v8;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final q()Lio/didomi/sdk/a;
    .registers 11

    new-instance v9, Lio/didomi/sdk/a;

    iget-object v0, p0, Lio/didomi/sdk/h9;->d:Lio/didomi/sdk/v3;

    const-string v1, "close"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/didomi/sdk/h9;->d:Lio/didomi/sdk/v3;

    const-string v3, "go_back_to_partners_list"

    const/4 v5, 0x0

    const/16 v7, 0xe

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0x3c

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lio/didomi/sdk/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Integer;ILkotlin/jvm/internal/n;)V

    return-object v9
.end method

.method public final r()Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Lio/didomi/sdk/h9;->d:Lio/didomi/sdk/v3;

    const-string v1, "data_processing_based_consent"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final r(Lio/didomi/sdk/models/InternalVendor;)Ljava/lang/String;
    .registers 6

    const-string v0, "vendor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/didomi/sdk/models/InternalVendor;->getPrivacyPolicyUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-static {v0}, Lkotlin/text/g;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_17

    :cond_12
    invoke-virtual {p1}, Lio/didomi/sdk/models/InternalVendor;->getPrivacyPolicyUrl()Ljava/lang/String;

    move-result-object p1

    goto :goto_3d

    :cond_17
    :goto_17
    iget-object v0, p0, Lio/didomi/sdk/h9;->d:Lio/didomi/sdk/v3;

    invoke-virtual {v0}, Lio/didomi/sdk/v3;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/didomi/sdk/h9;->d:Lio/didomi/sdk/v3;

    invoke-virtual {v1}, Lio/didomi/sdk/v3;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "en"

    aput-object v1, v2, v0

    invoke-static {p1, v2}, Lio/didomi/sdk/q3;->a(Lio/didomi/sdk/models/InternalVendor;[Ljava/lang/String;)Lio/didomi/sdk/Vendor$Url;

    move-result-object p1

    if-eqz p1, :cond_3c

    invoke-virtual {p1}, Lio/didomi/sdk/Vendor$Url;->getPrivacy()Ljava/lang/String;

    move-result-object p1

    goto :goto_3d

    :cond_3c
    const/4 p1, 0x0

    :goto_3d
    return-object p1
.end method

.method public final s(Lio/didomi/sdk/models/InternalVendor;)Landroid/text/SpannableString;
    .registers 6

    const-string v0, "vendor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/didomi/sdk/h9;->x(Lio/didomi/sdk/models/InternalVendor;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Landroid/text/SpannableString;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "[didomi_link_external]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance p1, Landroid/text/style/UnderlineSpan;

    invoke-direct {p1}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x21

    invoke-virtual {v0, p1, v2, v1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method public final s()Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Lio/didomi/sdk/h9;->d:Lio/didomi/sdk/v3;

    const-string v1, "device_storage"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final t()Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Lio/didomi/sdk/h9;->d:Lio/didomi/sdk/v3;

    const-string v1, "categories_of_data"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u(Lio/didomi/sdk/models/InternalVendor;)Lio/didomi/sdk/U8$c;
    .registers 16

    const-string v0, "vendor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lio/didomi/sdk/h9;->o()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lio/didomi/sdk/h9;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    move-object v4, v0

    invoke-direct {p0}, Lio/didomi/sdk/h9;->g()Ljava/util/List;

    move-result-object v5

    invoke-direct {p0}, Lio/didomi/sdk/h9;->h()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p0}, Lio/didomi/sdk/h9;->P()Z

    move-result v7

    invoke-virtual {p0}, Lio/didomi/sdk/h9;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-direct {p0}, Lio/didomi/sdk/h9;->o()Z

    move-result v9

    invoke-direct {p0}, Lio/didomi/sdk/h9;->R()Z

    move-result v8

    invoke-virtual {p0, p1}, Lio/didomi/sdk/h9;->v(Lio/didomi/sdk/models/InternalVendor;)Lio/didomi/sdk/U8$c$b;

    move-result-object v10

    new-instance v0, Lio/didomi/sdk/U8$c;

    const/4 v11, 0x0

    const/16 v12, 0x200

    const/4 v13, 0x0

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v13}, Lio/didomi/sdk/U8$c;-><init>(Lio/didomi/sdk/models/InternalVendor;ILjava/lang/String;Ljava/util/List;Ljava/util/List;ZZZLio/didomi/sdk/U8$c$b;IILkotlin/jvm/internal/n;)V

    return-object v0
.end method

.method public final v(Lio/didomi/sdk/models/InternalVendor;)Lio/didomi/sdk/U8$c$b;
    .registers 6

    const-string v0, "vendor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/didomi/sdk/U8$c$b;

    invoke-virtual {p0, p1}, Lio/didomi/sdk/h9;->w(Lio/didomi/sdk/models/InternalVendor;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, p1}, Lio/didomi/sdk/h9;->t(Lio/didomi/sdk/models/InternalVendor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1}, Lio/didomi/sdk/h9;->I(Lio/didomi/sdk/models/InternalVendor;)Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-virtual {p0, p1}, Lio/didomi/sdk/h9;->y(Lio/didomi/sdk/models/InternalVendor;)Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    move-result-object v3

    goto :goto_1b

    :cond_1a
    const/4 v3, 0x0

    :goto_1b
    invoke-static {p1}, Lio/didomi/sdk/q3;->g(Lio/didomi/sdk/models/InternalVendor;)Z

    move-result p1

    if-nez p1, :cond_29

    invoke-direct {p0}, Lio/didomi/sdk/h9;->R()Z

    move-result p1

    if-nez p1, :cond_29

    const/4 p1, 0x1

    goto :goto_2a

    :cond_29
    const/4 p1, 0x0

    :goto_2a
    invoke-direct {v0, v1, v2, v3, p1}, Lio/didomi/sdk/U8$c$b;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Lio/didomi/sdk/view/mobile/DidomiToggle$b;Z)V

    return-object v0
.end method

.method public final v()Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Lio/didomi/sdk/h9;->d:Lio/didomi/sdk/v3;

    const-string v1, "required_data_processing"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final w()Landroid/text/Spanned;
    .registers 5

    invoke-direct {p0}, Lio/didomi/sdk/h9;->G()Lio/didomi/sdk/k$g$a;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/k$g$a;->i()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    iget-object v2, p0, Lio/didomi/sdk/h9;->d:Lio/didomi/sdk/v3;

    const/4 v3, 0x2

    invoke-static {v2, v0, v1, v3, v1}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/util/Map;Lio/didomi/sdk/W5;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/didomi/sdk/V5;->i(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    :cond_16
    return-object v1
.end method

.method public final w(Lio/didomi/sdk/models/InternalVendor;)Ljava/lang/CharSequence;
    .registers 7

    const-string v0, "vendor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/didomi/sdk/h9;->z(Lio/didomi/sdk/models/InternalVendor;)Z

    move-result v0

    if-eqz v0, :cond_5b

    new-instance v0, Landroid/text/SpannableString;

    sget-object v1, Lkotlin/jvm/internal/o0;->a:Lkotlin/jvm/internal/o0;

    invoke-virtual {p1}, Lio/didomi/sdk/models/InternalVendor;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/didomi/sdk/V5;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "IAB\u00a0TCF"

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v1, "%s \t\t %s"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "format(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x7

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    iget-object v2, p0, Lio/didomi/sdk/h9;->e:Lio/didomi/sdk/z8;

    invoke-virtual {v2}, Lio/didomi/sdk/z8;->r()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    const/16 v4, 0x12

    invoke-virtual {v0, v1, p1, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v0, v1, p1, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_63

    :cond_5b
    invoke-virtual {p1}, Lio/didomi/sdk/models/InternalVendor;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/didomi/sdk/V5;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_63
    return-object v0
.end method

.method public final x()Landroid/text/Spanned;
    .registers 5

    invoke-direct {p0}, Lio/didomi/sdk/h9;->G()Lio/didomi/sdk/k$g$a;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/k$g$a;->k()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    iget-object v2, p0, Lio/didomi/sdk/h9;->d:Lio/didomi/sdk/v3;

    const/4 v3, 0x2

    invoke-static {v2, v0, v1, v3, v1}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/util/Map;Lio/didomi/sdk/W5;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/didomi/sdk/V5;->k(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    :cond_16
    return-object v1
.end method

.method public final x(Lio/didomi/sdk/models/InternalVendor;)Ljava/lang/String;
    .registers 10

    const-string v0, "vendor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lio/didomi/sdk/h9;->d:Lio/didomi/sdk/v3;

    invoke-virtual {p1}, Lio/didomi/sdk/models/InternalVendor;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "{vendorName}"

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/d0;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v4

    const-string v2, "vendor_privacy_policy_button_title"

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xa

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final y(Lio/didomi/sdk/models/InternalVendor;)Lio/didomi/sdk/view/mobile/DidomiToggle$b;
    .registers 3

    const-string v0, "vendor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lio/didomi/sdk/h9;->K(Lio/didomi/sdk/models/InternalVendor;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object p1, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->d:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    goto :goto_19

    :cond_e
    invoke-direct {p0, p1}, Lio/didomi/sdk/h9;->J(Lio/didomi/sdk/models/InternalVendor;)Z

    move-result p1

    if-eqz p1, :cond_17

    sget-object p1, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->c:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    goto :goto_19

    :cond_17
    sget-object p1, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->e:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    :goto_19
    return-object p1
.end method

.method public final y()Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Lio/didomi/sdk/h9;->d:Lio/didomi/sdk/v3;

    const-string v1, "select_partners"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final z()Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Lio/didomi/sdk/h9;->d:Lio/didomi/sdk/v3;

    const-string v1, "link_iab_tcf_website"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final z(Lio/didomi/sdk/models/InternalVendor;)Z
    .registers 3

    const-string v0, "vendor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lio/didomi/sdk/h9;->b0()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Lio/didomi/sdk/models/InternalVendor;->isIabVendor()Z

    move-result p1

    if-eqz p1, :cond_13

    const/4 p1, 0x1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    return p1
.end method

###### Class io.didomi.sdk.h9.a (io.didomi.sdk.h9$a)
.class public final synthetic Lio/didomi/sdk/h9$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/didomi/sdk/h9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->values()[Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->c:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->d:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    :try_start_19
    sget-object v1, Lio/didomi/sdk/view/mobile/DidomiToggle$b;->e:Lio/didomi/sdk/view/mobile/DidomiToggle$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_22} :catch_22

    :catch_22
    sput-object v0, Lio/didomi/sdk/h9$a;->a:[I

    return-void
.end method

###### Class io.didomi.sdk.h9.b (io.didomi.sdk.h9$b)
.class final Lio/didomi/sdk/h9$b;
.super Lkotlin/jvm/internal/t;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/h9;-><init>(Lio/didomi/sdk/apiEvents/b;Lio/didomi/sdk/H;Lio/didomi/sdk/M2;Lio/didomi/sdk/v3;Lio/didomi/sdk/z8;Lio/didomi/sdk/G8;Lio/didomi/sdk/V8;Lio/didomi/sdk/C3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Ljava/util/List<",
        "+",
        "Lio/didomi/sdk/models/InternalVendor;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "",
        "Lio/didomi/sdk/models/InternalVendor;",
        "a",
        "()Ljava/util/List;"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lio/didomi/sdk/h9;


# direct methods
.method constructor <init>(Lio/didomi/sdk/h9;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/h9$b;->a:Lio/didomi/sdk/h9;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/didomi/sdk/models/InternalVendor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/h9$b;->a:Lio/didomi/sdk/h9;

    invoke-static {v0}, Lio/didomi/sdk/h9;->b(Lio/didomi/sdk/h9;)Lio/didomi/sdk/V8;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/V8;->q()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/p;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lio/didomi/sdk/q3;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/h9$b;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

###### Class io.didomi.sdk.h9.c (io.didomi.sdk.h9$c)
.class final Lio/didomi/sdk/h9$c;
.super Lkotlin/jvm/internal/t;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/h9;-><init>(Lio/didomi/sdk/apiEvents/b;Lio/didomi/sdk/H;Lio/didomi/sdk/M2;Lio/didomi/sdk/v3;Lio/didomi/sdk/z8;Lio/didomi/sdk/G8;Lio/didomi/sdk/V8;Lio/didomi/sdk/C3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "",
        "a",
        "()Ljava/lang/Boolean;"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lio/didomi/sdk/h9;


# direct methods
.method constructor <init>(Lio/didomi/sdk/h9;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/h9$c;->a:Lio/didomi/sdk/h9;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/h9$c;->a:Lio/didomi/sdk/h9;

    invoke-static {v0}, Lio/didomi/sdk/h9;->a(Lio/didomi/sdk/h9;)Lio/didomi/sdk/H;

    move-result-object v0

    invoke-static {v0}, Lio/didomi/sdk/I;->c(Lio/didomi/sdk/H;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/h9$c;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class io.didomi.sdk.h9.d (io.didomi.sdk.h9$d)
.class public final Lio/didomi/sdk/h9$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/h9;->a(Ljava/util/Collection;Lio/didomi/sdk/models/InternalVendor$a;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u000e\u0010\u0003\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u00022\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u0002H\n\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "a",
        "kotlin.jvm.PlatformType",
        "b",
        "compare",
        "(Ljava/lang/Object;Ljava/lang/Object;)I",
        "kotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    check-cast p1, Lio/didomi/sdk/o0;

    invoke-interface {p1}, Lio/didomi/sdk/o0;->getName()Ljava/lang/String;

    move-result-object p1

    check-cast p2, Lio/didomi/sdk/o0;

    invoke-interface {p2}, Lio/didomi/sdk/o0;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/comparisons/f;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p1

    return p1
.end method

###### Class io.didomi.sdk.h9.e (io.didomi.sdk.h9$e)
.class final Lio/didomi/sdk/h9$e;
.super Lkotlin/jvm/internal/t;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/h9;-><init>(Lio/didomi/sdk/apiEvents/b;Lio/didomi/sdk/H;Lio/didomi/sdk/M2;Lio/didomi/sdk/v3;Lio/didomi/sdk/z8;Lio/didomi/sdk/G8;Lio/didomi/sdk/V8;Lio/didomi/sdk/C3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "",
        "a",
        "()Ljava/lang/Boolean;"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lio/didomi/sdk/h9;


# direct methods
.method constructor <init>(Lio/didomi/sdk/h9;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/h9$e;->a:Lio/didomi/sdk/h9;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/h9$e;->a:Lio/didomi/sdk/h9;

    invoke-static {v0}, Lio/didomi/sdk/h9;->a(Lio/didomi/sdk/h9;)Lio/didomi/sdk/H;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/H;->b()Lio/didomi/sdk/k;

    move-result-object v0

    invoke-static {v0}, Lio/didomi/sdk/l;->b(Lio/didomi/sdk/k;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/h9$e;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class io.didomi.sdk.h9.f (io.didomi.sdk.h9$f)
.class final Lio/didomi/sdk/h9$f;
.super Lkotlin/jvm/internal/t;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/h9;-><init>(Lio/didomi/sdk/apiEvents/b;Lio/didomi/sdk/H;Lio/didomi/sdk/M2;Lio/didomi/sdk/v3;Lio/didomi/sdk/z8;Lio/didomi/sdk/G8;Lio/didomi/sdk/V8;Lio/didomi/sdk/C3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Lio/didomi/sdk/k$g$a;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lio/didomi/sdk/k$g$a;",
        "a",
        "()Lio/didomi/sdk/k$g$a;"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lio/didomi/sdk/h9;


# direct methods
.method constructor <init>(Lio/didomi/sdk/h9;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/h9$f;->a:Lio/didomi/sdk/h9;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lio/didomi/sdk/k$g$a;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/h9$f;->a:Lio/didomi/sdk/h9;

    invoke-static {v0}, Lio/didomi/sdk/h9;->a(Lio/didomi/sdk/h9;)Lio/didomi/sdk/H;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/H;->b()Lio/didomi/sdk/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/k;->f()Lio/didomi/sdk/k$g;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/k$g;->b()Lio/didomi/sdk/k$g$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/h9$f;->a()Lio/didomi/sdk/k$g$a;

    move-result-object v0

    return-object v0
.end method

###### Class io.didomi.sdk.h9.g (io.didomi.sdk.h9$g)
.class final Lio/didomi/sdk/h9$g;
.super Lkotlin/jvm/internal/t;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/h9;-><init>(Lio/didomi/sdk/apiEvents/b;Lio/didomi/sdk/H;Lio/didomi/sdk/M2;Lio/didomi/sdk/v3;Lio/didomi/sdk/z8;Lio/didomi/sdk/G8;Lio/didomi/sdk/V8;Lio/didomi/sdk/C3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "",
        "a",
        "()Ljava/lang/Boolean;"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lio/didomi/sdk/h9;


# direct methods
.method constructor <init>(Lio/didomi/sdk/h9;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/h9$g;->a:Lio/didomi/sdk/h9;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Boolean;
    .registers 5

    iget-object v0, p0, Lio/didomi/sdk/h9$g;->a:Lio/didomi/sdk/h9;

    invoke-static {v0}, Lio/didomi/sdk/h9;->b(Lio/didomi/sdk/h9;)Lio/didomi/sdk/V8;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/V8;->q()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lio/didomi/sdk/h9$g;->a:Lio/didomi/sdk/h9;

    instance-of v2, v0, Ljava/util/Collection;

    const/4 v3, 0x1

    if-eqz v2, :cond_18

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_18

    goto :goto_3f

    :cond_18
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/didomi/sdk/models/InternalVendor;

    invoke-virtual {v1, v2}, Lio/didomi/sdk/h9;->I(Lio/didomi/sdk/models/InternalVendor;)Z

    move-result v2

    if-eqz v2, :cond_1c

    iget-object v0, p0, Lio/didomi/sdk/h9$g;->a:Lio/didomi/sdk/h9;

    invoke-static {v0}, Lio/didomi/sdk/h9;->b(Lio/didomi/sdk/h9;)Lio/didomi/sdk/V8;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/V8;->q()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-le v0, v3, :cond_3f

    goto :goto_40

    :cond_3f
    :goto_3f
    const/4 v3, 0x0

    :goto_40
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/h9$g;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class io.didomi.sdk.h9.h (io.didomi.sdk.h9$h)
.class final Lio/didomi/sdk/h9$h;
.super Lkotlin/jvm/internal/t;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/h9;-><init>(Lio/didomi/sdk/apiEvents/b;Lio/didomi/sdk/H;Lio/didomi/sdk/M2;Lio/didomi/sdk/v3;Lio/didomi/sdk/z8;Lio/didomi/sdk/G8;Lio/didomi/sdk/V8;Lio/didomi/sdk/C3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "",
        "a",
        "()Ljava/lang/Boolean;"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lio/didomi/sdk/h9;


# direct methods
.method constructor <init>(Lio/didomi/sdk/h9;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/h9$h;->a:Lio/didomi/sdk/h9;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/h9$h;->a:Lio/didomi/sdk/h9;

    invoke-static {v0}, Lio/didomi/sdk/h9;->a(Lio/didomi/sdk/h9;)Lio/didomi/sdk/H;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/H;->b()Lio/didomi/sdk/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/k;->a()Lio/didomi/sdk/k$a;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/k$a;->l()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/h9$h;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class io.didomi.sdk.h9.i (io.didomi.sdk.h9$i)
.class final Lio/didomi/sdk/h9$i;
.super Lkotlin/jvm/internal/t;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/h9;-><init>(Lio/didomi/sdk/apiEvents/b;Lio/didomi/sdk/H;Lio/didomi/sdk/M2;Lio/didomi/sdk/v3;Lio/didomi/sdk/z8;Lio/didomi/sdk/G8;Lio/didomi/sdk/V8;Lio/didomi/sdk/C3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "",
        "a",
        "()Ljava/lang/Boolean;"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lio/didomi/sdk/h9;


# direct methods
.method constructor <init>(Lio/didomi/sdk/h9;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/h9$i;->a:Lio/didomi/sdk/h9;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Boolean;
    .registers 6

    iget-object v0, p0, Lio/didomi/sdk/h9$i;->a:Lio/didomi/sdk/h9;

    invoke-virtual {v0}, Lio/didomi/sdk/h9;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lio/didomi/sdk/h9$i;->a:Lio/didomi/sdk/h9;

    invoke-virtual {v0}, Lio/didomi/sdk/h9;->j()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lio/didomi/sdk/h9$i;->a:Lio/didomi/sdk/h9;

    instance-of v3, v0, Ljava/util/Collection;

    if-eqz v3, :cond_21

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_21

    goto :goto_3f

    :cond_21
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_25
    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/didomi/sdk/models/InternalVendor;

    invoke-static {v3}, Lio/didomi/sdk/q3;->g(Lio/didomi/sdk/models/InternalVendor;)Z

    move-result v4

    if-nez v4, :cond_25

    invoke-static {v2, v3}, Lio/didomi/sdk/h9;->a(Lio/didomi/sdk/h9;Lio/didomi/sdk/models/InternalVendor;)Z

    move-result v3

    if-eqz v3, :cond_3e

    goto :goto_25

    :cond_3e
    const/4 v1, 0x0

    :cond_3f
    :goto_3f
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/h9$i;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class io.didomi.drawable.ie (io.didomi.sdk.ie)
.class public final synthetic Lio/didomi/sdk/ie;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/didomi/sdk/h9;

.field public final synthetic b:Lio/didomi/sdk/models/InternalVendor;


# direct methods
.method public synthetic constructor <init>(Lio/didomi/sdk/h9;Lio/didomi/sdk/models/InternalVendor;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/ie;->a:Lio/didomi/sdk/h9;

    iput-object p2, p0, Lio/didomi/sdk/ie;->b:Lio/didomi/sdk/models/InternalVendor;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/ie;->a:Lio/didomi/sdk/h9;

    iget-object v1, p0, Lio/didomi/sdk/ie;->b:Lio/didomi/sdk/models/InternalVendor;

    invoke-static {v0, v1}, Lio/didomi/sdk/h9;->m(Lio/didomi/sdk/h9;Lio/didomi/sdk/models/InternalVendor;)V

    return-void
.end method
