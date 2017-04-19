cheatsheet do
  title 'Angular2 Cheat Sheet'
  docset_file_name 'angular2'
  keyword 'angular2'
  source_url 'https://angular.io/docs/ts/latest/guide/cheatsheet.html'
  
  style '
    td.td_command code
    {
      padding: 0px;
      box-shadow: none;
      border: none;
      background: none;
    }
  '

  category do
    id 'Bootstrapping'
    header 'Snippet'
    header 'Comments'
    
    entry do
      td_command 'bootstrap​(MyAppComponent, [MyService, { provide: ... }]);'
      name 'Bootstraps an application with MyAppComponent as the root component and configures the DI providers. '
    end

  end

  category do
    id 'Template syntax'
    header 'Snippet'
    header 'Comments'
    
    entry do
      td_command '<input [value]="firstName">'
      name 'Binds property <code>value</code> to the result of expression <code>firstName</code>.'
    end
    entry do
      td_command '<div [attr.role]="myAriaRole">'
      name 'Binds attribute <code>role</code> to the result of expression <code>myAriaRole</code>.'
    end
    entry do
      td_command '<div [class.extra-sparkle]="isDelightful">'
      name 'Binds the presence of the CSS class <code>extra-sparkle</code> on the element to the truthiness of the expression <code>isDelightful</code>.'
    end
    entry do
      td_command '<div [style.width.px]="mySize">'
      name 'Binds style property <code>width</code> to the result of expression <code>mySize</code> in pixels. Units are optional.'
    end
    entry do
      td_command '<button (click)="readRainbow($event)">'
      name 'Calls method <code>readRainbow</code> when a click event is triggered on this button element (or its children) and passes in the event object.'
    end
    entry do
      td_command '<div title="Hello {{ponyName}}">'
      name 'Binds a property to an interpolated string, e.g. "Hello Seabiscuit". Equivalent to:
<code>&lt;div [title]="\'Hello \' + ponyName"&gt;</code>'
    end
    entry do
      td_command '<p>Hello {{ponyName}}</p>'
      name 'Binds text content to an interpolated string, e.g. "Hello Seabiscuit".'
    end
    entry do
      td_command '<my-cmp [(title)]="name">'
      name 'Sets up two-way data binding. Equivalent to: <code>&lt;my-cmp [title]="name" (titleChange)="name=$event"&gt;</code>'
    end
    entry do
      td_command '<video #movieplayer ...>  <button (click)="movieplayer.play()"></video>'
      name 'Creates a local variable <code>movieplayer</code> that provides access to the <code>video</code> element instance in data-binding and event-binding expressions in the current template.'
    end
    entry do
      td_command '<p *myUnless="myExpression">...</p>'
      name 'The <code>*</code> symbol means that the current element will be turned into an embedded template. Equivalent to:
<code>&lt;template [myUnless]="myExpression"&gt;&lt;p&gt;...&lt;/p&gt;&lt;/template&gt;</code>'
    end
    entry do
      td_command '<p>Card No.: {{cardNumber | myCreditCardNumberFormatter}}</p>'
      name 'Transforms the current value of expression <code>cardNumber</code> via the pipe called <code>myCreditCardNumberFormatter</code>.'
    end
    entry do
      td_command '<p>Employer: {{employer?.companyName}}</p>'
      name 'The safe navigation operator (<code>?</code>) means that the <code>employer</code> field is optional and if <code>undefined</code>, the rest of the expression should be ignored.'
    end
    entry do
      td_command '<svg:rect x="0" y="0" width="100" height="100"/>'
      name 'SVG snippet templates need an <code>svg:</code> prefix on their root element to disambiguate the SVG element from an HTML component.'
    end
    entry do
      td_command '<svg>  <rect x="0" y="0" width="100" height="100"/></svg>'
      name '<code>&lt;svg&gt;</code> root elements are detected as SVG element automatically without the prefix'
    end

  end

  category do
    id 'Built-in directives'
    header 'Snippet'
    header 'Comments'
    
    entry do
      td_command '<section *ngIf="showSection">'
      name 'Removes or recreates a portion of the DOM tree based on the showSection expression.'
    end
    entry do
      td_command '<li *ngFor="let item of list">'
      name 'Turns the li element and its contents into a template, and uses that to instantiate a view for each item in list.'
    end
    entry do
      td_command '<div [ngSwitch]="conditionExpression">  <template [ngSwitchCase]="case1Exp">...</template>  <template ngSwitchCase="case2LiteralString">...</template>  <template ngSwitchDefault>...</template></div>'
      name 'Conditionally swaps the contents of the div by selecting one of the embedded templates based on the current value of conditionExpression.'
    end
    entry do
      td_command '<div [ngClass]="{active: isActive, disabled: isDisabled}">'
      name 'Binds the presence of CSS classes on the element to the truthiness of the associated map values. The right-hand side expression should return {class-name: true/false} map.'
    end

  end

  category do
    id 'Forms'
    header 'Snippet'
    header 'Comments'
    
    entry do
      td_command '<input [(ngModel)]="userName">'
      name 'Provides two-way data-binding, parsing and validation for form controls.'
    end

  end

  category do
    id 'Class decorators'
    header 'Snippet'
    header 'Comments'
    
    entry do
      td_command '@Component({...})class MyComponent() {}'
      name 'Declares that a class is a component and provides metadata about the component.'
    end
    entry do
      td_command '@Directive({...})class MyDirective() {}'
      name 'Declares that a class is a directive and provides metadata about the directive.'
    end
    entry do
      td_command '@Pipe({...})class MyPipe() {}'
      name 'Declares that a class is a pipe and provides metadata about the pipe.'
    end
    entry do
      td_command '@Injectable()class MyService() {}'
      name 'Declares that a class has dependencies that should be injected into the constructor when the dependency injector is creating an instance of this class.'
    end

  end

  category do
    id 'Directive configuration'
    header 'Snippet'
    header 'Comments'
    
    entry do
      td_command 'selector: \'.cool-button:not(a)\''
      name 'Specifies a CSS selector that identifies this directive within a template. Supported selectors include <code>element</code>,
<code>[attribute]</code>, <code>.class</code>, and <code>:not()</code>.'
    end
    entry do
      td_command 'providers: [MyService, { provide: ... }]'
      name 'Array of dependency injection providers for this directive and its children.'
    end

  end

  category do
    id 'Component configuration'
    header 'Snippet'
    header 'Comments'
    
    entry do
      td_command 'viewProviders: [MyService, { provide: ... }]'
      name 'Array of dependency injection providers scoped to this component\'s view.'
    end
    entry do
      td_command 'template: \'Hello {{name}}\'templateUrl: \'my-component.html\''
      name 'Inline template / external template URL of the component\'s view.'
    end
    entry do
      td_command 'styles: [\'.primary {color: red}\']styleUrls: [\'my-component.css\']'
      name 'List of inline CSS styles / external stylesheet URLs for styling component’s view.'
    end
    entry do
      td_command 'directives: [MyDirective, MyComponent]'
      name 'List of directives used in the the component’s template.'
    end
    entry do
      td_command 'pipes: [MyPipe, OtherPipe]'
      name 'List of pipes used in the component\'s template.'
    end

  end

  category do
    id 'Class field decorators for directives and components'
    header 'Snippet'
    header 'Comments'
    
    entry do
      td_command '@Input() myProperty;'
      name 'Declares an input property that we can update via property binding (e.g.
<code>&lt;my-cmp [myProperty]="someExpression"&gt;</code>).'
    end
    entry do
      td_command '@Output() myEvent = new EventEmitter();'
      name 'Declares an output property that fires events to which we can subscribe with an event binding (e.g. <code>&lt;my-cmp (myEvent)="doSomething()"&gt;</code>).'
    end
    entry do
      td_command '@HostBinding(\'[class.valid]\') isValid;'
      name 'Binds a host element property (e.g. CSS class valid) to directive/component property (e.g. isValid).'
    end
    entry do
      td_command '@HostListener(\'click\', [\'$event\']) onClick(e) {...}'
      name 'Subscribes to a host element event (e.g. click) with a directive/component method (e.g. onClick), optionally passing an argument ($event).'
    end
    entry do
      td_command '@ContentChild(myPredicate) myChildComponent;'
      name 'Binds the first result of the component content query (myPredicate) to the myChildComponent property of the class.'
    end
    entry do
      td_command '@ContentChildren(myPredicate) myChildComponents;'
      name 'Binds the results of the component content query (myPredicate) to the myChildComponents property of the class.'
    end
    entry do
      td_command '@ViewChild(myPredicate) myChildComponent;'
      name 'Binds the first result of the component view query (myPredicate) to the myChildComponent property of the class. Not available for directives.'
    end
    entry do
      td_command '@ViewChildren(myPredicate) myChildComponents;'
      name 'Binds the results of the component view query (myPredicate) to the myChildComponents property of the class. Not available for directives.'
    end

  end

  category do
    id 'Directive and component change detection and lifecycle hooks'
    header 'Snippet'
    header 'Comments'
    
    entry do
      td_command 'constructor(myService: MyService, ...) { ... }'
      name 'The class constructor is called before any other lifecycle hook. Use it to inject dependencies, but avoid any serious work here.'
    end
    entry do
      td_command 'ngOnChanges(changeRecord) { ... }'
      name 'Called after every change to input properties and before processing content or child views.'
    end
    entry do
      td_command 'ngOnInit() { ... }'
      name 'Called after the constructor, initializing input properties, and the first call to ngOnChanges.'
    end
    entry do
      td_command 'ngDoCheck() { ... }'
      name 'Called every time that the input properties of a component or a directive are checked. Use it to extend change detection by performing a custom check.'
    end
    entry do
      td_command 'ngAfterContentInit() { ... }'
      name 'Called after ngOnInit when the component\'s or directive\'s content has been initialized.'
    end
    entry do
      td_command 'ngAfterContentChecked() { ... }'
      name 'Called after every check of the component\'s or directive\'s content.'
    end
    entry do
      td_command 'ngAfterViewInit() { ... }'
      name 'Called after ngAfterContentInit when the component\'s view has been initialized. Applies to components only.'
    end
    entry do
      td_command 'ngAfterViewChecked() { ... }'
      name 'Called after every check of the component\'s view. Applies to components only.'
    end
    entry do
      td_command 'ngOnDestroy() { ... }'
      name 'Called once, before the instance is destroyed.'
    end

  end

  category do
    id 'Dependency injection configuration'
    header 'Snippet'
    header 'Comments'
    
    entry do
      td_command '{ provide: MyService, useClass: MyMockService }'
      name 'Sets or overrides the provider for MyService to the MyMockService class.'
    end
    entry do
      td_command '{ provide: MyService, useFactory: myFactory }'
      name 'Sets or overrides the provider for MyService to the myFactory factory function.'
    end
    entry do
      td_command '{ provide: MyValue, useValue: 41 }'
      name 'Sets or overrides the provider for MyValue to the value 41.'
    end

  end

  category do
    id 'Routing and navigation'
    header 'Snippet'
    header 'Comments'
    
    entry do
      td_command '@RouteConfig([  { path: \'/:myParam\', component: MyComponent, name: \'MyCmp\' },  { path: \'/staticPath\', component: ..., name: ...},  { path: \'/*wildCardParam\', component: ..., name: ...}])class MyComponent() {}'
      name 'Configures routes for the decorated component. Supports static, parameterized, and wildcard routes.'
    end
    entry do
      td_command '<router-outlet></router-outlet>'
      name 'Marks the location to load the component of the active route.'
    end
    entry do
      td_command '<a [routerLink]="[ \'/MyCmp\', {myParam: \'value\' } ]">'
      name 'Creates a link to a different view based on a route instruction consisting of a route name and optional parameters. The route name matches the as property of a configured route. Add the \'/\' prefix to navigate to a root route; add the \'./\' prefix for a child route.'
    end
    entry do
      td_command '@CanActivate(() => { ... })class MyComponent() {}'
      name 'A component decorator defining a function that the router should call first to determine if it should activate this component. Should return a boolean or a promise.'
    end
    entry do
      td_command 'routerOnActivate(nextInstruction, prevInstruction) { ... }'
      name 'After navigating to a component, the router calls the component\'s routerOnActivate method (if defined).'
    end
    entry do
      td_command 'routerCanReuse(nextInstruction, prevInstruction) { ... }'
      name 'The router calls a component\'s routerCanReuse method (if defined) to determine whether to reuse the instance or destroy it and create a new instance. Should return a boolean or a promise.'
    end
    entry do
      td_command 'routerOnReuse(nextInstruction, prevInstruction) { ... }'
      name 'The router calls the component\'s routerOnReuse method (if defined) when it re-uses a component instance.'
    end
    entry do
      td_command 'routerCanDeactivate(nextInstruction, prevInstruction) { ... }'
      name 'The router calls the routerCanDeactivate methods (if defined) of every component that would be removed after a navigation. The navigation proceeds if and only if all such methods return true or a promise that is resolved.'
    end
    entry do
      td_command 'routerOnDeactivate(nextInstruction, prevInstruction) { ... }'
      name 'Called before the directive is removed as the result of a route change. May return a promise that pauses removing the directive until the promise resolves.'
    end

  end

end
