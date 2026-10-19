package com.kidoz.sdk.api.ui_views.parental_lock;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.json.b4;
import com.kidoz.sdk.api.general.utils.SDKLogger;
import com.kidoz.sdk.api.general.utils.Utils;
import com.kidoz.sdk.api.gif.views.GifDecoderView;
import com.kidoz.sdk.api.picasso_related.PicassoOk;
import com.squareup.imagelib.e;
import com.squareup.imagelib.t;
import com.squareup.imagelib.y;
import com.unity3d.ads.adplayer.AndroidWebViewClient;
import com.vungle.ads.internal.model.AdPayload;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public class AssetView extends FrameLayout {
    private GifDecoderView mAnimatedGifDrawable;
    private FrameLayout mGifViewContainer;
    private ImageView mImageView;
    private boolean mIsAssetLoaded;
    private ArrayList<y> mTransformations;
    private MyWebView mWebPwebView;

    class HandleGifResource implements GifDecoderView.IGifDecoderViewCallback {
        Drawable mDefaultImage;
        File mFile;
        IOnAssetLoadedListener mLoadedListener;
        String mPath;

        public HandleGifResource(File file, Drawable drawable, IOnAssetLoadedListener iOnAssetLoadedListener, String str) {
            this.mFile = file;
            this.mDefaultImage = drawable;
            this.mLoadedListener = iOnAssetLoadedListener;
            this.mPath = str;
            run();
        }

        @Override // com.kidoz.sdk.api.gif.views.GifDecoderView.IGifDecoderViewCallback
        public void gifDecoderViewReady() {
            if (AssetView.this.mAnimatedGifDrawable != null) {
                AssetView.this.mGifViewContainer.addView(AssetView.this.mAnimatedGifDrawable);
                AssetView.this.setAssetBackgroundDrawable(null);
                AssetView.this.mAnimatedGifDrawable.start();
            }
            AssetView.this.mIsAssetLoaded = true;
            IOnAssetLoadedListener iOnAssetLoadedListener = this.mLoadedListener;
            if (iOnAssetLoadedListener != null) {
                iOnAssetLoadedListener.onAssetLoaded(AssetView.this.mIsAssetLoaded);
            }
        }

        public void run() {
            try {
                AssetView.this.cleanGifFromMemory();
                AssetView.this.addGifContainer();
                AssetView.this.mAnimatedGifDrawable = new GifDecoderView(AssetView.this.getContext(), new FileInputStream(this.mFile), this);
            } catch (IOException e2) {
                SDKLogger.printErrorLog(e2.getMessage() + "   path: " + this.mPath);
                AssetView.this.mIsAssetLoaded = false;
                Drawable drawable = this.mDefaultImage;
                if (drawable != null) {
                    AssetView.this.setAssetBackgroundDrawable(drawable);
                }
                IOnAssetLoadedListener iOnAssetLoadedListener = this.mLoadedListener;
                if (iOnAssetLoadedListener != null) {
                    iOnAssetLoadedListener.onAssetLoaded(AssetView.this.mIsAssetLoaded);
                }
            }
        }
    }

    public interface IOnAssetLoadedListener {
        void onAssetLoaded(boolean z);
    }

    class MyWebView extends WebView {
        public MyWebView(Context context) {
            super(context);
            if (Build.VERSION.SDK_INT >= 21) {
                getSettings().setMixedContentMode(0);
            }
        }

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            return false;
        }

        @Override // android.webkit.WebView, android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            return false;
        }
    }

    public AssetView(Context context) {
        super(context);
        this.mTransformations = new ArrayList<>();
        this.mAnimatedGifDrawable = null;
        initView();
    }

    public AssetView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mTransformations = new ArrayList<>();
        this.mAnimatedGifDrawable = null;
        initView();
    }

    public AssetView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mTransformations = new ArrayList<>();
        this.mAnimatedGifDrawable = null;
        initView();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addGifContainer() {
        FrameLayout frameLayout = new FrameLayout(getContext());
        this.mGifViewContainer = frameLayout;
        addView(frameLayout, new FrameLayout.LayoutParams(-1, -1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cleanGifFromMemory() {
        GifDecoderView gifDecoderView = this.mAnimatedGifDrawable;
        if (gifDecoderView != null) {
            gifDecoderView.stop();
            this.mAnimatedGifDrawable.clean();
            this.mAnimatedGifDrawable = null;
        }
        FrameLayout frameLayout = this.mGifViewContainer;
        if (frameLayout != null) {
            ((ViewGroup) frameLayout.getParent()).removeView(this.mGifViewContainer);
            this.mGifViewContainer = null;
        }
    }

    private void cleanWebpFromMemory() {
        MyWebView myWebView = this.mWebPwebView;
        if (myWebView != null) {
            myWebView.clearHistory();
            this.mWebPwebView.clearCache(true);
            this.mWebPwebView.loadUrl(AndroidWebViewClient.BLANK_PAGE);
            this.mWebPwebView.pauseTimers();
            this.mWebPwebView = null;
        }
    }

    private void clearTrasnformations() {
        this.mTransformations.clear();
    }

    private MyWebView generateWebPAnimatableWebView() {
        MyWebView myWebView = new MyWebView(getContext());
        myWebView.setBackgroundColor(0);
        myWebView.setClipToPadding(false);
        myWebView.setDrawingCacheBackgroundColor(0);
        myWebView.getSettings().setLayoutAlgorithm(WebSettings.LayoutAlgorithm.SINGLE_COLUMN);
        myWebView.setScrollBarStyle(0);
        myWebView.setScrollbarFadingEnabled(true);
        myWebView.getSettings().setAppCacheEnabled(false);
        myWebView.getSettings().setCacheMode(2);
        myWebView.getSettings().setDisplayZoomControls(false);
        myWebView.getSettings().setAllowContentAccess(true);
        myWebView.getSettings().setAllowFileAccess(true);
        myWebView.getSettings().setSupportZoom(false);
        myWebView.getSettings().setSupportMultipleWindows(false);
        myWebView.setVerticalScrollBarEnabled(false);
        myWebView.setHorizontalScrollBarEnabled(false);
        myWebView.setScrollContainer(false);
        myWebView.setPadding(0, 0, 0, 0);
        myWebView.setLayerType(2, null);
        if (Build.VERSION.SDK_INT >= 21) {
            myWebView.getSettings().setMixedContentMode(0);
        }
        return myWebView;
    }

    private void handleGifResource(File file, Drawable drawable, IOnAssetLoadedListener iOnAssetLoadedListener, String str) {
        new HandleGifResource(file, drawable, iOnAssetLoadedListener, str);
    }

    private void handleOtherResource(Drawable drawable, IOnAssetLoadedListener iOnAssetLoadedListener) {
        this.mIsAssetLoaded = false;
        setAssetBackgroundDrawable(drawable);
        if (iOnAssetLoadedListener != null) {
            iOnAssetLoadedListener.onAssetLoaded(this.mIsAssetLoaded);
        }
    }

    private void handlePngResource(File file, final IOnAssetLoadedListener iOnAssetLoadedListener) {
        t tVarJ = PicassoOk.getPicasso(getContext()).j(file);
        if (this.mImageView.getWidth() != 0 && this.mImageView.getHeight() != 0) {
            tVarJ.k(this.mImageView.getWidth(), this.mImageView.getHeight());
            tVarJ.j();
            tVarJ.a();
        }
        tVarJ.m(this.mTransformations);
        tVarJ.h(this.mImageView, new e() { // from class: com.kidoz.sdk.api.ui_views.parental_lock.AssetView.3
            @Override // com.squareup.imagelib.e
            public void onError() {
                AssetView.this.mIsAssetLoaded = false;
                IOnAssetLoadedListener iOnAssetLoadedListener2 = iOnAssetLoadedListener;
                if (iOnAssetLoadedListener2 != null) {
                    iOnAssetLoadedListener2.onAssetLoaded(AssetView.this.mIsAssetLoaded);
                }
            }

            @Override // com.squareup.imagelib.e
            public void onSuccess() {
                AssetView.this.setAssetBackgroundDrawable(null);
                AssetView.this.mIsAssetLoaded = true;
                IOnAssetLoadedListener iOnAssetLoadedListener2 = iOnAssetLoadedListener;
                if (iOnAssetLoadedListener2 != null) {
                    iOnAssetLoadedListener2.onAssetLoaded(AssetView.this.mIsAssetLoaded);
                }
            }
        });
    }

    private void handleWebpResource(Drawable drawable, IOnAssetLoadedListener iOnAssetLoadedListener, String str) {
        if (Build.VERSION.SDK_INT >= 17) {
            if (Utils.isWebViewSupportWebP()) {
                MyWebView myWebViewGenerateWebPAnimatableWebView = generateWebPAnimatableWebView();
                this.mWebPwebView = myWebViewGenerateWebPAnimatableWebView;
                addView(myWebViewGenerateWebPAnimatableWebView, 0, new FrameLayout.LayoutParams(-1, -1));
                loadImageToWebPwebView(AdPayload.FILE_SCHEME + str);
                this.mIsAssetLoaded = true;
            }
            if (!this.mIsAssetLoaded) {
                setAssetBackgroundDrawable(drawable);
            }
            if (iOnAssetLoadedListener != null) {
                iOnAssetLoadedListener.onAssetLoaded(this.mIsAssetLoaded);
            }
        }
    }

    private void initView() {
        setDrawingCacheBackgroundColor(0);
        setId(Utils.generateViewId());
        ImageView imageView = new ImageView(getContext());
        this.mImageView = imageView;
        imageView.setScaleType(ImageView.ScaleType.FIT_XY);
        setLayerType(2, null);
        addView(this.mImageView, new FrameLayout.LayoutParams(-1, -1));
    }

    private void loadImageToWebPwebView(String str) {
        if (this.mWebPwebView != null) {
            this.mWebPwebView.loadDataWithBaseURL("", "<html><head><style type='text/css'> img {max-width: 100%;height:initial;} margin: 0; padding: 0 </style></head><body style='margin:0;padding:0;' ><img src=\"" + str + "\"/></body></html>", "text/html", b4.L, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAssetBackgroundDrawable(Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 16) {
            this.mImageView.setBackground(drawable);
        } else {
            this.mImageView.setBackgroundDrawable(drawable);
        }
    }

    public void addTransformation(y yVar) {
        ArrayList<y> arrayList = this.mTransformations;
        if (arrayList != null) {
            arrayList.add(yVar);
        }
    }

    public boolean getIsAssetLoaded() {
        return this.mIsAssetLoaded;
    }

    public void loadAsset(File file, Drawable drawable, IOnAssetLoadedListener iOnAssetLoadedListener) {
        loadCorrectAsset(file, drawable, iOnAssetLoadedListener);
    }

    public void loadAsset(File file, IOnAssetLoadedListener iOnAssetLoadedListener) {
        loadCorrectAsset(file, null, iOnAssetLoadedListener);
    }

    public void loadAsset(final String str, final IOnAssetLoadedListener iOnAssetLoadedListener) {
        t tVarK = PicassoOk.getPicasso(getContext()).k(str);
        ImageView imageView = this.mImageView;
        if (imageView != null && imageView.getWidth() != 0 && this.mImageView.getHeight() != 0) {
            tVarK.k(this.mImageView.getWidth(), this.mImageView.getHeight());
            tVarK.j();
            tVarK.a();
        }
        tVarK.i();
        tVarK.m(this.mTransformations);
        tVarK.e(new e() { // from class: com.kidoz.sdk.api.ui_views.parental_lock.AssetView.1
            @Override // com.squareup.imagelib.e
            public void onError() {
                AssetView.this.mIsAssetLoaded = false;
                IOnAssetLoadedListener iOnAssetLoadedListener2 = iOnAssetLoadedListener;
                if (iOnAssetLoadedListener2 != null) {
                    iOnAssetLoadedListener2.onAssetLoaded(AssetView.this.mIsAssetLoaded);
                }
            }

            @Override // com.squareup.imagelib.e
            public void onSuccess() {
                t tVarK2 = PicassoOk.getPicasso(AssetView.this.getContext()).k(str);
                if (AssetView.this.mImageView != null && AssetView.this.mImageView.getWidth() != 0 && AssetView.this.mImageView.getHeight() != 0) {
                    tVarK2.k(AssetView.this.mImageView.getWidth(), AssetView.this.mImageView.getHeight());
                    tVarK2.j();
                    tVarK2.a();
                }
                tVarK2.i();
                tVarK2.m(AssetView.this.mTransformations);
                tVarK2.g(AssetView.this.mImageView);
                AssetView.this.mIsAssetLoaded = true;
                IOnAssetLoadedListener iOnAssetLoadedListener2 = iOnAssetLoadedListener;
                if (iOnAssetLoadedListener2 != null) {
                    iOnAssetLoadedListener2.onAssetLoaded(AssetView.this.mIsAssetLoaded);
                }
            }
        });
    }

    public void loadCorrectAsset(File file, Drawable drawable, IOnAssetLoadedListener iOnAssetLoadedListener) {
        this.mIsAssetLoaded = false;
        if (drawable != null) {
            setAssetBackgroundDrawable(drawable);
        }
        if (file == null) {
            this.mIsAssetLoaded = false;
            if (iOnAssetLoadedListener != null) {
                iOnAssetLoadedListener.onAssetLoaded(false);
                return;
            }
            return;
        }
        if (!file.exists()) {
            this.mIsAssetLoaded = false;
            setAssetBackgroundDrawable(drawable);
            if (iOnAssetLoadedListener != null) {
                iOnAssetLoadedListener.onAssetLoaded(this.mIsAssetLoaded);
                return;
            }
            return;
        }
        String path = file.getPath();
        if (path.contains(".png") || path.contains(".PNG") || path.contains(".jpg") || path.contains(".JPG")) {
            handlePngResource(file, iOnAssetLoadedListener);
            return;
        }
        if (path.contains(".gif") || path.contains(".GIF")) {
            handleGifResource(file, drawable, iOnAssetLoadedListener, path);
        } else if (path.contains(".webp") || path.contains(".WEBP") || path.contains(".webP")) {
            handleWebpResource(drawable, iOnAssetLoadedListener, path);
        } else {
            handleOtherResource(drawable, iOnAssetLoadedListener);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        cleanGifFromMemory();
        cleanWebpFromMemory();
    }

    @Override // android.view.View
    protected void onFocusChanged(boolean z, int i, Rect rect) {
        GifDecoderView gifDecoderView;
        super.onFocusChanged(z, i, rect);
        if (!z || (gifDecoderView = this.mAnimatedGifDrawable) == null || !gifDecoderView.isVisible() || this.mAnimatedGifDrawable.isPlaying()) {
            return;
        }
        this.mAnimatedGifDrawable.start();
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        GifDecoderView gifDecoderView = this.mAnimatedGifDrawable;
        if (gifDecoderView != null) {
            if (i != 0) {
                gifDecoderView.stop();
            } else {
                if (gifDecoderView.isPlaying()) {
                    return;
                }
                this.mAnimatedGifDrawable.start();
            }
        }
    }

    public void pauseGifAnim() {
        GifDecoderView gifDecoderView = this.mAnimatedGifDrawable;
        if (gifDecoderView != null) {
            gifDecoderView.pause();
        }
    }

    public void prefetchAsset(String str, final IOnAssetLoadedListener iOnAssetLoadedListener) {
        t tVarK = PicassoOk.getPicasso(getContext()).k(str);
        if (this.mImageView.getWidth() != 0 && this.mImageView.getHeight() != 0) {
            tVarK.k(this.mImageView.getWidth(), this.mImageView.getHeight());
            tVarK.j();
            tVarK.a();
        }
        tVarK.i();
        tVarK.m(this.mTransformations);
        tVarK.e(new e() { // from class: com.kidoz.sdk.api.ui_views.parental_lock.AssetView.2
            @Override // com.squareup.imagelib.e
            public void onError() {
                IOnAssetLoadedListener iOnAssetLoadedListener2 = iOnAssetLoadedListener;
                if (iOnAssetLoadedListener2 != null) {
                    iOnAssetLoadedListener2.onAssetLoaded(false);
                }
            }

            @Override // com.squareup.imagelib.e
            public void onSuccess() {
                IOnAssetLoadedListener iOnAssetLoadedListener2 = iOnAssetLoadedListener;
                if (iOnAssetLoadedListener2 != null) {
                    iOnAssetLoadedListener2.onAssetLoaded(true);
                }
            }
        });
    }

    public void resumeGifAnim() {
        GifDecoderView gifDecoderView = this.mAnimatedGifDrawable;
        if (gifDecoderView != null) {
            gifDecoderView.resume();
        }
    }

    public void setScaleType(ImageView.ScaleType scaleType) {
        this.mImageView.setScaleType(scaleType);
    }

    public void startGifAnim() {
        GifDecoderView gifDecoderView = this.mAnimatedGifDrawable;
        if (gifDecoderView == null || gifDecoderView.isPlaying()) {
            return;
        }
        this.mAnimatedGifDrawable.start();
    }

    public void stopGifAnim() {
        GifDecoderView gifDecoderView = this.mAnimatedGifDrawable;
        if (gifDecoderView != null) {
            gifDecoderView.stop();
        }
    }
}
